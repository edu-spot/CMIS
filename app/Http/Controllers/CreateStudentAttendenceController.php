<?php

namespace App\Http\Controllers;

use View;
use DB;
use App\semester;
use App\sclass;
use App\branch;
use Illuminate\Support\Facades\Auth;
use Illuminate\Http\Request;
class CreateStudentAttendenceController extends Controller
{
    public function display()
	{
		 // $records = DB::table('branches')->get();
		$records = branch::all();
		return view('users_view.admin.attendence', compact('records'));
    // return View::make('users_view/admin/attendence')->with('records',$records);
	}


	public function loadsemester(Request $request)
	{

		// $data=semester::select('semester_name','semesterid')->where('branch_ id',$request->branch)->take(100)->get();
		// return response()->json($data);
		// return $request->all();
		$data = semester::select('semester_name', 'semesterid')->where('branch_id', $request->id)->get();
		return response()->json($data);



	}
	public function loadsclass(Request $request)
	{

		// $data=semester::select('semester_name','semesterid')->where('branch_ id',$request->branch)->take(100)->get();
		// return response()->json($data);
		// return $request->all();
		$data = sclass::select('sclass_name', 'sclassid')->where('semester_id', $request->id)->get();
		return response()->json($data);



	}

	public function create()
	{

	}


}
