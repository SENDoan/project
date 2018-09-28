<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class Airports extends Model
{
    protected $table = 'airports';
    protected $fillable = ['Airport_ID','Name','Location_ID'];
}
