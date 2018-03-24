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
Route::get('branchdelete/{id}','CreatebranchController@delete')->name('deleteBranch')->middleware('adminmiddleware');
Route::post('addbranches', 'CreatebranchController@create')->name('addbranches')->middleware('adminmiddleware');

Route::get('/addsemester', 'CreateSemesterController@display')->name('addsemster')->middleware('adminmiddleware');
Route::get('semesterdelete/{id}','CreateSemesterController@delete')->name('deletesemester')->middleware('adminmiddleware');
Route::post('addsemesters', 'CreateSemesterController@create')->name('addsemesters')->middleware('adminmiddleware');




Route::get('/addsubject', 'CreateSubjectController@display')->name('addsubject')->middleware('adminmiddleware');
Route::get('subjectdelete/{id}','CreateSubjectController@delete')->name('deletesubject')->middleware('adminmiddleware');
Route::post('addsubjects', 'CreateSubjectController@create')->name('addsubjects')->middleware('adminmiddleware');



Route::get('/addsclass', 'CreateSclassController@display')->name('addsclass')->middleware('adminmiddleware');
Route::get('sclassdelete/{id}','CreateSclassController@delete')->name('deletesclass')->middleware('adminmiddleware');
Route::post('addsclasss', 'CreateSclassController@create')->name('addsclasss')->middleware('adminmiddleware');

Route::get('/timeslot', 'SetTimeslotController@display')->name('timeslot')->middleware('adminmiddleware');
Route::get('deletetimeslot/{id}','SetTimeslotController@delete')->name('deletetimeslot')->middleware('adminmiddleware');
Route::post('timeslot', 'SetTimeslotController@create')->name('timeslot')->middleware('adminmiddleware');

Route::get('/takeatt', 'CreateStudentAttendenceController@display')->name('takeatt')->middleware('adminmiddleware');
Route::get('/loaditems', 'CreateStudentAttendenceController@load')->name('loaditems')->middleware('adminmiddleware');
Route::post('/takeattd', 'CreateStudentAttendenceController@create')->name('takeattd')->middleware('adminmiddleware');



Route::post('adds', 'CreateStudentController@create')->name('adds');




Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');
Route::get('/view', 'CreateStudentController@view')->name('view');