<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class ReportesController extends Controller
{
    public function pie_index(){
        return view('reportes.graficos.pie_index');
    }

    public function pie_generate(Request $request){
        // dd($request);
        switch ($request->tipo) {
            case 1:

                $proyectos = DB::table('proyectos as p')
                                    ->join('proyectos_tipos as pt', 'pt.id', 'p.proyecto_tipo_id')
                                    ->select(DB::raw('pt.id, pt.nombre, count(pt.id) as cantidad'))
                                    ->groupBy('id', 'nombre')
                                    ->where('p.deleted_at', NULL)->get();
                return response()->json($proyectos);

            case 2:
                $areas = DB::table('areas')
                                ->select('id', 'nombre', 'deleted_at as cantidad')
                                ->where('deleted_at', NULL)->get();

                $proyectos = DB::table('proyectos')
                                    ->select('area_id')
                                    ->where('deleted_at', NULL)->get();
                $resultado = collect([]);
                $indice = 0;
                foreach ($areas as $area) {
                    $cantidad = 0;
                    foreach ($proyectos as $proyecto) {
                        $proyecto_areas = explode(',', $proyecto->area_id);
                        foreach ($proyecto_areas as $item) {
                            if($item == $area->id){
                                $cantidad++;
                            }
                        }
                    }
                    $areas[$indice]->cantidad = $cantidad;
                    if($cantidad>0){
                        $resultado->push($areas[$indice]);
                    }
                    $indice++;
                }                
                return response()->json($resultado);

            case 3:
                $entidades = DB::table('entidades')
                                ->select('id', 'nombre', 'deleted_at as cantidad')
                                ->where('deleted_at', NULL)->get();

                $proyectos = DB::table('proyectos')
                                    ->select('entidad_id')
                                    ->where('deleted_at', NULL)->get();
                $resultado = collect([]);
                $indice = 0;
                foreach ($entidades as $entidad) {
                    $cantidad = 0;
                    foreach ($proyectos as $proyecto) {
                        $proyecto_entidades = explode(',', $proyecto->entidad_id);
                        foreach ($proyecto_entidades as $item) {
                            if($item == $entidad->id){
                                $cantidad++;
                            }
                        }
                    }
                    $entidades[$indice]->cantidad = $cantidad;
                    if($cantidad>0){
                        $resultado->push($entidades[$indice]);
                    }
                    $indice++;
                }
                
                return response()->json($resultado);
            
            default:
                return response()->json(['error' => 'Error inesperado']);
        }
    }

    public function line_index(){
        return view('reportes.graficos.line_index');
    }
}
