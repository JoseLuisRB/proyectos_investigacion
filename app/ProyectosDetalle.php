<?php

namespace App;

use Illuminate\Database\Eloquent\Model;


class ProyectosDetalle extends Model
{
    protected $fillable = [
        'proyecto_id', 'proyectos_estado_id', 'monto_ejecutado', 'avance', 'observaciones', 'fecha'
    ];
}
