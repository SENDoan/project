<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class Airplanes extends Model
{
    protected $table = 'airplanes';
    protected $fillable = ['Airplane_ID','Name'];
}
