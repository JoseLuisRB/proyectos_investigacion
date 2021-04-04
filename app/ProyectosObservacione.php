<?php

namespace App;

use Illuminate\Database\Eloquent\Model;


class ProyectosObservacione extends Model
{
    protected $fillable = [
        'proyecto_id', 'user_id', 'proyectos_detalle_id', 'titulo', 'detalle'
    ];
}
