<?php

namespace App\Http\Controllers;

use View;
use DB;
use App\branch;
use Illuminate\Support\Facades\Auth;
use Illuminate\Http\Request;

class CreateBranchController extends Controller
{
    
	public function delete($value='')
	{
		return View::make('users_view/admin/addbranch')->with('records', $records);
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
