<?php

namespace App\Http\Controllers;

use View;
use DB;
use App\timeslot;
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
    return View::make('users_view/admin/settimeslot')->with('records', $records);
	}





    public function create(Request $data){


    	


    	$table= new timeslot;
    	$table->time = '9:00 to 10:00';
    	$table->timetype = 'l';
    	$table->duration = '1';
    	$createdby = Auth::user()->id;
    	$table->created_by = $createdby;
    	$table->save();

    	$table= new timeslot;
    	$table->time = '10:00 to 11:00';
    	$table->timetype = 'l';
    	$table->duration = '1';
    	$createdby = Auth::user()->id;
    	$table->created_by = $createdby;
    	$table->save();

    	$table= new timeslot;
    	$table->time = '11:20 to 12:20';
    	$table->timetype = 'l';
    	$table->duration = '1';
    	$createdby = Auth::user()->id;
    	$table->created_by = $createdby;
    	$table->save();


    	$table= new timeslot;
    	$table->time = '12:20 to 1:20';
    	$table->timetype = 'l';
    	$table->duration = '1';
    	$createdby = Auth::user()->id;
    	$table->created_by = $createdby;
    	$table->save();



$records = DB::table('timeslots')->get();
    return View::make('users_view/admin/settimeslot')->with('records', $records)->with('status','Timeslots of 1 hour Added');




    }






}
