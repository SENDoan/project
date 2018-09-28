<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class Airlines extends Model
{
    protected $table = 'airlines';
    protected $fillable = ['Airline_ID','Name','Term'];

    protected $primaryKey = 'Airline_ID';
}
