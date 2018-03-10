<?php

namespace App\Http\Controllers;

use View;
use DB;
use App\branch;
use App\sclass;
use App\subject;
use App\semester;
use Illuminate\Support\Facades\Auth;
use Illuminate\Http\Request;


class SetTimeslotController extends Controller
{
    




	public function delete(Request $request,$value)
	{

        $stall = subject::where('semester_id', $value)->exists();

        if($stall == '0')
        {   
           $record = semester::where('semesterid',$value)->first();
            $state = $record->delete(); 
          if($state == 'success')
            {   
		      return redirect()->back()->with('status','Semester entry Deleted');
            }
    }

    else 
        {
         return redirect()->back()->with('err','Semester cannot be deleted it is included in a class');   
        }
	}



	public function display()
	{
		$records = DB::table('timeslots')->get();
		$brn = DB::table('branches')->get();
    return View::make('users_view/admin/settimeslot')->with('records', $records)->with('brn' , $brn);
	}





    public function create(Request $data){



    	$table= new semester;
    	$table->semester_name = $data['semestername'];
    	$table->branch_id = $data['branch_id'];
    	$createdby = Auth::user()->id;
    	$table->created_by = $createdby;
    	$table->save();



    	return redirect('/addsemester')->with('status', 'Semester Added');





    }






}
