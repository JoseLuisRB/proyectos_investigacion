<?php

namespace App;

use Illuminate\Database\Eloquent\Model;


class Seguimiento extends Model
{
    protected $fillable = [
        'proyecto_id', 'user_id', 'origen', 'destino', 'fecha', 'hora', 'detalle'
    ];
}
