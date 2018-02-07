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

Route::get('/', function () {
    return view('welcome');
});


Route::get('/add', function () {
    return view('createstudent');
})->middleware('adminmiddleware');


Route::get('/future', function () {
    return view('future');
})->middleware('adminmiddleware');



Route::post('adds', 'CreateStudentController@create')->name('adds');

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');
Route::get('/view', 'CreateStudentController@view')->name('view');