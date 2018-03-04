<?php

namespace App\Http\Controllers;

use View;
use DB;
use App\branch;
use App\semester;
use Illuminate\Support\Facades\Auth;
use Illuminate\Http\Request;

class CreateBranchController extends Controller
{
    
	public function delete(Request $request,$value)
	{

        $stall = semester::where('branch_id', $value)->exists();

        if($stall == '0')
        {   
           $record = branch::where('branchid',$value)->first();
            $state = $record->delete(); 
          if($state == 'success')
            {   
		      return redirect()->back()->with('status','Branch Deleted');
            }
    }

    else 
        {
         return redirect()->back()->with('err','Branch cannot be deleted it contains semester');   
        }
	}



	public function display()
	{
		$records = DB::table('branches')->get();
    return View::make('users_view/admin/addbranch')->with('records', $records);
	}





    public function create(Request $data){



    	$table= new branch;
    	$table->branch_name = $data['branchname'];
    	$createdby = Auth::user()->id;
    	$table->created_by = $createdby;
    	$table->save();



    	return redirect('/addbranch')->with('status', 'Branch Added');





    }
}
