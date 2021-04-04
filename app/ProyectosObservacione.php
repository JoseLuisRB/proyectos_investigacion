<?php

namespace App;

use Illuminate\Database\Eloquent\Model;


class ProyectosObservacione extends Model
{
    protected $fillable = [
        'proyecto_id', 'user_id', 'titulo', 'detalle'
    ];
}
