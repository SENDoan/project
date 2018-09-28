<?php

namespace App\Http\Controllers;

use App\Model\Locations;
use Illuminate\Http\Request;

class LocationsController extends Controller
{
    public function index(){
        $locations = Locations::all();

        return view('home')->with("locations", $locations);
    }
}
