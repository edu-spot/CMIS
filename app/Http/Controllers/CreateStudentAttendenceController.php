<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class CreateStudentAttendenceController extends Controller
{
    public function display()
	{
		// $records = DB::table('timeslots')->get();
    return View::make('users_view/admin/attendence');
	}
}
