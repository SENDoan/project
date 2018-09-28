<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class AirplaneModel extends Model
{
    protected $table = 'airplane_model';
    protected $fillable = ['Model_ID','Airplane_ID'];
}
