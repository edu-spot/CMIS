<?php

namespace App\Http\Controllers;

use View;
use DB;
use App\branch;
use App\sclass;
use App\semester;
use App\subject;
use Illuminate\Support\Facades\Auth;
use Illuminate\Http\Request;

class CreateSubjectController extends Controller
{
    public function delete(Request $request,$value)
	{

        // $stall = sclass::where('semester_id', $value)->exists();

        // if($stall == '0')
        // {   
           $record = subject::where('subjectid',$value)->first();
            $state = $record->delete(); 
          if($state == 'success')
            {   
		      return redirect()->back()->with('status','Subject entry Deleted');
            }
    // }

    else 
        {
         return redirect()->back()->with('err','Subject cannot be deleted due to donald trump');   
        }
	}



	public function display()
	{
		$records = DB::table('subjects')->get();
		$brn = DB::table('semesters')->get();
    return View::make('users_view/admin/addsubject')->with('records', $records)->with('brn' , $brn);
	}





    public function create(Request $data){



    	$table= new subject;
    	$table->sub_name = $data['subjectname'];
    	$table->sub_alais = $data['subjectalais'];
    	$table->sub_code = $data['subjectcode'];
    	$table->semester_id = $data['semester_id'];
    	$createdby = Auth::user()->id;
    	$table->created_by = $createdby;
    	$table->save();



    	return redirect()->back()->with('status', 'Semester Added');





    }
}
