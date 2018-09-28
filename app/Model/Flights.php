<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class Flights extends Model
{
    protected $table = 'flights';
    protected $fillable = ['Flight_ID','Route_ID','Model_ID','Airline_ID','Departs_at','Arrives_at'];
}
