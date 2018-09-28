<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/home', [
    'as' => 'home',
    'uses' => 'LocationsController@index'
]);
Route::post('/postHome',[
    'as' => 'postHome',
    'uses' => 'PostController@postHome'
]);
Route::get('/flights/{from}/{to}/{date}/{returnDate}/{adult}/{child}/{baby}', [
    'as' => 'flights',
    'uses' => 'PostController@getFlights'
]);
Route::get('/info', [
    'as' => 'info',
    function (){return view('info');}
]);
Route::post('/info', [
    'as' => 'info',
    function (){return view('info');}
]);


Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
});
