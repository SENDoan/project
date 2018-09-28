<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class ImageAirline extends Model
{
    protected $table = 'image_airline';
    protected $fillable = ['Image_Airline','Airline_ID','Link'];
}
