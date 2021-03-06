<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Carrera extends Model
{
    use SoftDeletes;
	protected $dates = ['deleted_at'];
    protected $fillable = [
        'nombre', 'detalle', 'facultade_id'
    ];
}
