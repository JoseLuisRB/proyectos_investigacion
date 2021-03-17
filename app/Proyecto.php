<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Proyecto extends Model
{
    protected $fillable = [
        'proyecto_tipo_id',
        'nombre',
        'responsable',
        'anio',
        'participantes',
        'estado_actual',
        'area_id',
        'entidad_id',
        'avance',
        'observaciones',
        'archivo',
        'monto',
        'productos',
        'inicio',
        'fin'
    ];
}
