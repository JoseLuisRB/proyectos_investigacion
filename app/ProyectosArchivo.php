<?php

namespace App;

use Illuminate\Database\Eloquent\Model;


class ProyectosArchivo extends Model
{
    protected $fillable = [
        'proyecto_detalle_id', 'titulo', 'tipo', 'archivo'
    ];
}
