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
});




Route::get('/addbranch', 'CreateBranchController@display')->name('addbranch')->middleware('employeemiddleware');
Route::get('branchdelete/{id}','CreatebranchController@delete')->name('deleteBranch')->middleware('adminmiddleware');
Route::post('addbranches', 'CreatebranchController@create')->name('addbranches')->middleware('adminmiddleware');

Route::get('/addsemester', 'CreateSemesterController@display')->name('addsemster')->middleware('adminmiddleware');
Route::get('semesterdelete/{id}','CreateSemesterController@delete')->name('deletesemester')->middleware('adminmiddleware');
Route::post('addsemesters', 'CreateSemesterController@create')->name('addsemesters')->middleware('adminmiddleware');




Route::get('/addsubject', 'CreateSubjectController@display')->name('addsubject')->middleware('adminmiddleware');
Route::get('subjectdelete/{id}','CreateSubjectController@delete')->name('deletesubject')->middleware('adminmiddleware');
Route::post('addsubjects', 'CreateSubjectController@create')->name('addsubjects')->middleware('adminmiddleware');


Auth::routes();


Route::get('/addsclass', 'CreateSclassController@display')->name('addsclass')->middleware('adminmiddleware');
Route::get('sclassdelete/{id}','CreateSclassController@delete')->name('deletesclass')->middleware('adminmiddleware');
Route::post('addsclasss', 'CreateSclassController@create')->name('addsclasss')->middleware('adminmiddleware');

Route::get('/timeslot', 'SetTimeslotController@display')->name('timeslot')->middleware('adminmiddleware');
Route::get('deletetimeslot/{id}','SetTimeslotController@delete')->name('deletetimeslot')->middleware('adminmiddleware');
Route::post('timeslot', 'SetTimeslotController@create')->name('timeslot')->middleware('adminmiddleware');

Route::get('/takeatt', 'CreateStudentAttendenceController@display')->name('takeatt')->middleware('adminmiddleware');
Route::post('/takeattd', 'CreateStudentAttendenceController@create')->name('takeattd')->middleware('adminmiddleware');
Route::get('/loadsemester', 'CreateStudentAttendenceController@loadsemester')->name('loadsemester')->middleware('adminmiddleware');
Route::get('/loadsclass', 'CreateStudentAttendenceController@loadsclass')->name('loadsclass')->middleware('adminmiddleware');
Route::get('/loadsubject', 'CreateStudentAttendenceController@loadsubject')->name('loadsubject')->middleware('adminmiddleware');
Route::post('/stoatt', 'CreateStudentAttendenceController@next')->name('stoatt')->middleware('adminmiddleware');
Route::post('/storeatt', 'CreateStudentAttendenceController@sto')->name('storeatt')->middleware('adminmiddleware');
Route::get('/viewatt', 'CreateStudentAttendenceController@viewa')->name('viewatt')->middleware('adminmiddleware');
Route::post('/vatt', 'CreateStudentAttendenceController@viewatt')->name('vatt')->middleware('adminmiddleware');
Route::post('adds', 'CreateStudentController@create')->name('adds');
Route::post('/downatt', 'CreateStudentAttendenceController@downreturn')->name('downatt')->middleware('adminmiddleware');
Route::get('/downatt', 'CreateStudentAttendenceController@downatt')->name('downatt')->middleware('adminmiddleware');


Route::post('/importstu', 'ImportStudents@insert')->name('importstu')->middleware('adminmiddleware'); 
Route::get('/importstu', 'ImportStudents@display')->name('importstu')->middleware('adminmiddleware'); 


Route::get('/stuatt', 'ViewattController@display')->name('stuatt')->middleware('studentmiddleware'); 


Route::get('/stumarks', 'AddMarksController@display')->name('stumarks')->middleware('adminmiddleware'); 
Route::post('/stomarks', 'AddMarksController@next')->name('stomarks')->middleware('adminmiddleware');
Route::post('/storemarks', 'AddMarksController@sto')->name('storemarks')->middleware('adminmiddleware');
Route::get('/viewmarks', 'AddMarksController@viewm')->name('viewmarks')->middleware('adminmiddleware');
Route::post('/vmarks', 'AddMarksController@viewatt')->name('vmarks')->middleware('adminmiddleware');
Route::get('/stumarksview', 'AddMarksController@individual')->name('stumarksview')->middleware('studentmiddleware'); 
Route::post('/downmarks', 'AddMarksController@downreturn')->name('downmarks')->middleware('adminmiddleware');
Route::get('/downmarks', 'AddMarksController@downmarks')->name('downmarks')->middleware('adminmiddleware');


Route::get('/home', 'HomeController@index')->name('home');


Route::get('/view', 'CreateStudentController@view')->name('view');