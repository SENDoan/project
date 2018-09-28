<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class Reservations extends Model
{
    protected $table = 'reservations';
    protected $fillable = ['Reservation_number','First_Name','Last_Name','Phone_number','Email','Requirement'];
}
