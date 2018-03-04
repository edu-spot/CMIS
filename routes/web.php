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


// Route::get('/addbranch', function () {
//     return view('users_view/admin/addbranch');
// })->middleware('adminmiddleware');

Route::get('/future', function () {
    return view('future');
})->middleware('adminmiddleware');




Route::get('/addbranch', 'CreateBranchController@display')->name('addbranch')->middleware('adminmiddleware');
Route::get('branchdelete/{id}','CreatebranchController@delete')->name('deleteBranch');
Route::post('addbranches', 'CreatebranchController@create')->name('addbranches');

Route::get('/addsemester', 'CreateSemesterController@display')->name('addsemster')->middleware('adminmiddleware');
Route::get('semesterdelete/{id}','CreateSemesterController@delete')->name('deletesemester');
Route::post('addsemesters', 'CreateSemesterController@create')->name('addsemesters');







Route::post('adds', 'CreateStudentController@create')->name('adds');

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');
Route::get('/view', 'CreateStudentController@view')->name('view');