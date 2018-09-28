<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class Locations extends Model
{
    protected $table = 'locations';
    protected $fillable = ['Location_ID','Name','Description'];
}
