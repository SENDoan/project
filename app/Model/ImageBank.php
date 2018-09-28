<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class ImageBank extends Model
{
    protected $table = 'image_bank';
    protected $fillable = ['Image_ID','Account_number','Link'];
}
