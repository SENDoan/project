<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class AirplaneClass extends Model
{
    protected $table = 'airplane_class';
    protected $fillable = ['Airplane_ID','Class_ID','NumSeat'];
}
