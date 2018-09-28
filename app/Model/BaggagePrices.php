<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class BaggagePrices extends Model
{
    protected $table = 'baggageprices';
    protected $fillable = ['ID','Weight','Unit','Airline_ID','Price'];
}
