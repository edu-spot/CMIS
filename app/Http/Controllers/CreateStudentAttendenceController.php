<?php

namespace App\Http\Controllers;

use View;
use DB;
use App\semester;
use App\branch;
use Illuminate\Support\Facades\Auth;
use Illuminate\Http\Request;
class CreateStudentAttendenceController extends Controller
{
    public function display()
	{
		 $records = DB::table('branches')->get();
    return View::make('users_view/admin/attendence')->with('records',$records);
	}


	public function load(Request $request)
	{

		$data=semester::select('semester_name','semesterid')->where('branch_ id',$request->id)->take(100)->get();
		return response()->json($data);



	}

	public function create()
	{

	}


}
