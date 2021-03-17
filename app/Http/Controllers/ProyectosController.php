<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Carbon\Carbon;
use App\Persona;
use App\Cargo;
use App\ProyectosTipo;
use App\ProyectosEstado;
use App\Proyecto;
use App\Area;
use App\Entidade;

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
        return view('proyectos/proyectos_index', compact('registros'));
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
        $estados = ProyectosEstado::all()->where('deleted_at', NULL);
        $areas = Area::all()->where('deleted_at', NULL);
        $tipos = ProyectosTipo::all()->where('deleted_at', NULL);
        $entidades = Entidade::all()->where('deleted_at', NULL);
        return view('proyectos/proyectos_edit-add', compact('titulo', 'action', 'personas', 'cargos', 'estados', 'tipos', 'areas', 'entidades'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
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

        $archivo = '';
        if ($request->hasFile('archivo')) {
            $file = $request->file('archivo');
            $filename = str_random(20).'.'.$file->getClientOriginalExtension();
            $path = 'proyectos/'.date('F').date('Y').'/'.$filename;
            \Storage::disk('local')->put('public/'.$path,  \File::get($file));
            $archivo = $path;
        }

        $proyecto = Proyecto::create([
                        'nombre' => $request->nombre,
                        'responsable' => $request->responsable,
                        'anio' => $request->anio,
                        'participantes' => substr($participantes, 0, -1),
                        'estado_actual' => $request->estado_id,
                        'area_id' => substr($area_id, 0, -1),
                        'proyecto_tipo_id' => $request->proyecto_tipo_id,
                        'entidad_id' => substr($entidad_id, 0, -1),
                        'avance' => $request->avance,
                        'archivo' => $archivo,
                        'observaciones' => $request->observaciones,
                        'monto' => $request->monto,
                        'productos' => $request->productos,
                        'inicio' => $request->inicio,
                        'fin' => $request->fin,
                    ]);
        if($proyecto){
            return redirect()->route('proyectos.index')->with(['message' => 'Proyecto guardado exitosamente.', 'alert-type' => 'success']);
        }else{
            return redirect()->route('proyectos.index')->with(['message' => 'Ocurrio un error al guardar el proyecto.', 'alert-type' => 'success']);
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
                                
        return view('proyectos/proyectos_view', compact('proyecto', 'personas', 'areas', 'entidades'));
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

        $archivo = '';
        if ($request->hasFile('archivo')) {
            $file = $request->file('archivo');
            $filename = str_random(20).'.'.$file->getClientOriginalExtension();
            $path = 'proyectos/'.date('F').date('Y').'/'.$filename;
            \Storage::disk('local')->put('public/'.$path,  \File::get($file));
            $archivo = $path;
        }

        $proyecto = Proyecto::findOrFail($id);

        $proyecto->nombre = $request->nombre;
        $proyecto->responsable = $request->responsable;
        $proyecto->anio = $request->anio;
        $proyecto->participantes = substr($participantes, 0, -1);
        $proyecto->estado_actual = $request->estado_id;
        $proyecto->entidad_id = substr($entidad_id, 0, -1);
        $proyecto->area_id = substr($area_id, 0, -1);
        $proyecto->avance = $request->avance;
        if($archivo) $proyecto->archivo = $archivo;
        $proyecto->observaciones = $request->observaciones;
        $proyecto->monto = $request->monto;
        $proyecto->productos = $request->productos;
        $proyecto->inicio = $request->inicio;
        $proyecto->fin = $request->fin;

        $proyecto->save();
        
        if($proyecto){
            return redirect()->route('proyectos.index')->with(['message' => 'Datos de proyecto actulizados exitosamente.', 'alert-type' => 'success']);
        }else{
            return redirect()->route('proyectos.index')->with(['message' => 'Ocurrio un error al actualizar los datos del proyecto.', 'alert-type' => 'success']);
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
            return redirect()->route('proyectos.index')->with(['message' => 'Ocurrio un error al eliminar el proyecto.', 'alert-type' => 'success']);
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
