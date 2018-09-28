<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class ReservationsDetails extends Model
{
    protected $table = 'reservations_details';
    protected $fillable = ['Reservation_number','Gender','First_Name','Last_Name','Check-in_baggage'];
}
