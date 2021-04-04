<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Auth;
use Carbon\Carbon;

use App\Persona;
use App\Cargo;
use App\ProyectosTipo;
use App\ProyectosEstado;
use App\Proyecto;
use App\Area;
use App\Entidade;
use App\ProyectosDetalle;
use App\ProyectosObservacione;
use App\ProyectosArchivo;

class ProyectosController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $registros = DB::table('proyectos as p')
                        ->join('proyectos_estados as e', 'e.id', 'p.estado_actual')
                        ->join('areas as a', 'a.id', 'p.area_id')
                        ->select('p.*', 'e.nombre as estado', 'a.nombre as area')
                        ->where('p.deleted_at', NULL)
                        ->orderBy('p.id', 'DESC')->get();
        // dd($registros);
        $estados_proyectos = ProyectosEstado::where('deleted_at', NULL)->get();
        return view('proyectos/proyectos_index', compact('registros', 'estados_proyectos'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $titulo = 'Añadir';
        $action = 'store';
        $personas = Persona::all()->where('deleted_at', NULL);
        $cargos = Cargo::all()->where('deleted_at', NULL);
        $areas = Area::all()->where('deleted_at', NULL);
        $tipos = ProyectosTipo::all()->where('deleted_at', NULL);
        $entidades = Entidade::all()->where('deleted_at', NULL);
        return view('proyectos/proyectos_edit-add', compact('titulo', 'action', 'personas', 'cargos', 'tipos', 'areas', 'entidades'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        DB::beginTransaction();
        try {
            // Formatear tipo de datos de array a string separeados por comas
            $participantes = '';
            foreach ($request->personas as $item) {
                $participantes .= $item.',';
            }

            $entidad_id = '';
            foreach ($request->entidad_id as $item) {
                $entidad_id .= $item.',';
            }

            $area_id = '';
            foreach ($request->area_id as $item) {
                $area_id .= $item.',';
            }
            // ===============================================

            $estado = ProyectosEstado::where('deleted_at', NULL)->first();

            $proyecto = Proyecto::create([
                'nombre' => $request->nombre,
                'responsable' => $request->responsable,
                'anio' => $request->anio,
                'participantes' => substr($participantes, 0, -1),
                'estado_actual' => $estado->id,
                'area_id' => substr($area_id, 0, -1),
                'proyecto_tipo_id' => $request->proyecto_tipo_id,
                'entidad_id' => substr($entidad_id, 0, -1),
                'avance' => 0,
                'observaciones' => $request->observaciones,
                'monto' => $request->monto,
                'productos' => $request->productos,
                'inicio' => $request->inicio,
                'fin' => $request->fin,
            ]);

            $proyectos_detalle = ProyectosDetalle::create([
                'proyecto_id' => $proyecto->id,
                'proyectos_estado_id' => $estado->id,
                'monto_ejecutado' => 0,
                'avance' => 0,
                'observaciones' => 'Inicialización del proyecto'
            ]);

            if ($request->hasFile('archivo')) {
                $file = $request->file('archivo');
                $filename = str_random(20).'.'.$file->getClientOriginalExtension();
                $path = 'proyectos/'.date('F').date('Y').'/'.$filename;
                \Storage::disk('local')->put('public/'.$path,  \File::get($file));

                ProyectosArchivo::create([
                    'proyecto_detalle_id' => $proyectos_detalle->id,
                    'titulo' => $file->getClientOriginalName(),
                    'tipo' => $file->getClientOriginalExtension(),
                    'archivo' => $path
                ]);
            }

            DB::commit();
            return redirect()->route('proyectos.index')->with(['message' => 'Proyecto guardado exitosamente.', 'alert-type' => 'success']);
        } catch (\Throwable $th) {
            DB::rollback();
            return redirect()->route('proyectos.index')->with(['message' => 'Ocurrio un error al guardar el proyecto.', 'alert-type' => 'error']);
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $proyecto = DB::table('proyectos as p')
                        ->join('proyectos_tipos as pt', 'pt.id', 'p.proyecto_tipo_id')
                        ->join('proyectos_estados as pe', 'pe.id', 'p.estado_actual')
                        ->select('p.*', 'pe.nombre as estado_actual', 'pt.nombre as tipo')
                        ->where('p.id', $id)->first();
        $personas = Persona::all()->where('deleted_at', NULL);
        $areas = Area::all()->where('deleted_at', NULL);
        $entidades = Entidade::all()->where('deleted_at', NULL);

        $proyecto_detalles = DB::table('proyectos_detalles as pd')
                        ->join('proyectos_estados as pe', 'pe.id', 'pd.proyectos_estado_id')
                        ->select('pd.*', 'pe.nombre as estado_nombre', 'pe.etiqueta as estado_etiqueta', 'pe.icono as estado_icono', 'pd.updated_at as detalle_observaciones', 'pd.updated_at as archivos')
                        ->where('pd.proyecto_id', $id)->get();
        $cont = 0;
        foreach ($proyecto_detalles as $value) {
            $proyecto_detalles[$cont]->detalle_observaciones = ProyectosObservacione::join('users as u', 'u.id', 'user_id')->where('proyectos_detalle_id', $value->id)->get();
            $proyecto_detalles[$cont]->archivos = ProyectosArchivo::where('proyecto_detalle_id', $value->id)->get();
            $cont++;
        }                           
        return view('proyectos/proyectos_view', compact('proyecto', 'personas', 'areas', 'entidades', 'proyecto_detalles'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $titulo = 'Editar';
        $action = 'update';
        $personas = Persona::all()->where('deleted_at', NULL);
        $cargos = Cargo::all()->where('deleted_at', NULL);
        $estados = ProyectosEstado::all()->where('deleted_at', NULL);
        $areas = Area::all()->where('deleted_at', NULL);
        $proyecto = Proyecto::findOrFail($id);
        $tipos = ProyectosTipo::all()->where('deleted_at', NULL);
        $entidades = Entidade::all()->where('deleted_at', NULL);
        return view('proyectos/proyectos_edit-add', compact('titulo', 'action', 'personas', 'cargos', 'estados', 'areas', 'proyecto', 'tipos', 'entidades'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        // Formatear tipo de datos de array a string separeados por comas
        $participantes = '';
        foreach ($request->personas as $item) {
            $participantes .= $item.',';
        }

        $entidad_id = '';
        foreach ($request->entidad_id as $item) {
            $entidad_id .= $item.',';
        }

        $area_id = '';
        foreach ($request->area_id as $item) {
            $area_id .= $item.',';
        }
        // ===============================================

        $proyecto = Proyecto::findOrFail($id);

        $proyecto->nombre = $request->nombre;
        $proyecto->responsable = $request->responsable;
        $proyecto->anio = $request->anio;
        $proyecto->participantes = substr($participantes, 0, -1);
        $proyecto->entidad_id = substr($entidad_id, 0, -1);
        $proyecto->area_id = substr($area_id, 0, -1);
        $proyecto->observaciones = $request->observaciones;
        $proyecto->monto = $request->monto;
        $proyecto->productos = $request->productos;
        $proyecto->inicio = $request->inicio;
        $proyecto->fin = $request->fin;

        $proyecto->save();
        
        if($proyecto){
            return redirect()->route('proyectos.index')->with(['message' => 'Datos de proyecto actulizados exitosamente.', 'alert-type' => 'success']);
        }else{
            return redirect()->route('proyectos.index')->with(['message' => 'Ocurrio un error al actualizar los datos del proyecto.', 'alert-type' => 'error']);
        }
    }

    public function store_detalle(Request $request){
        try {
            $proyecto = Proyecto::findOrFail($request->id);
            $proyecto->avance = $request->avance;
            $proyecto->estado_actual = $request->proyectos_estado_id;
            $proyecto->save();

            $proyectos_detalle = ProyectosDetalle::create([
                'proyecto_id' => $proyecto->id,
                'proyectos_estado_id' => $request->proyectos_estado_id,
                'monto_ejecutado' => $request->monto_ejecutado,
                'observaciones' => $request->observaciones,
                'avance' => $request->avance
            ]);

            if ($request->hasFile('archivo')) {
                $file = $request->file('archivo');
                $filename = str_random(20).'.'.$file->getClientOriginalExtension();
                $path = 'proyectos/'.date('F').date('Y').'/'.$filename;
                \Storage::disk('local')->put('public/'.$path,  \File::get($file));

                ProyectosArchivo::create([
                    'proyecto_detalle_id' => $proyectos_detalle->id,
                    'titulo' => $file->getClientOriginalName(),
                    'tipo' => $file->getClientOriginalExtension(),
                    'archivo' => $path
                ]);
            }

            DB::commit();
            return redirect()->route('proyectos.index')->with(['message' => 'Avance guardado exitosamente.', 'alert-type' => 'success']);
        } catch (\Throwable $th) {
            DB::rollback();
            return redirect()->route('proyectos.index')->with(['message' => 'Ocurrio un error al guardar el avance.', 'alert-type' => 'error']);
        }

    }

    public function store_observaciones(Request $request){
        try {
            $proyectos_detalle = ProyectosDetalle::where('proyecto_id', $request->id)->orderBy('id', 'DESC')->first();
            ProyectosObservacione::create([
                'user_id' => Auth::user()->id,
                'proyectos_detalle_id' => $proyectos_detalle->id,
                'proyecto_id' => $request->id,
                'titulo' => $request->titulo,
                'detalle' => $request->detalle
            ]);
            DB::commit();
            return redirect()->route('proyectos.index')->with(['message' => 'Observación guardado exitosamente.', 'alert-type' => 'success']);
        } catch (\Throwable $th) {
            DB::rollback();
            return redirect()->route('proyectos.index')->with(['message' => 'Ocurrio un error al guardar la observación.', 'alert-type' => 'error']);
        }

    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $proyecto = Proyecto::findOrFail($id);
        $proyecto->deleted_at = Carbon::now();
        $proyecto->save();

        if($proyecto){
            return redirect()->route('proyectos.index')->with(['message' => 'Proyecto eliminado exitosamente.', 'alert-type' => 'success']);
        }else{
            return redirect()->route('proyectos.index')->with(['message' => 'Ocurrio un error al eliminar el proyecto.', 'alert-type' => 'error']);
        }
    }

    // =======================
    public function agregar_persona(Request $request){
        $persona = Persona::create([
            'cargo_id' => $request->cargo_id,
            'nombre' => $request->nombre,
            'apellidos' => $request->apellidos,
            'ci' => $request->ci,
            'movil' => $request->movil,
            'email' => $request->email
        ]);
        return $persona;
    }
}
