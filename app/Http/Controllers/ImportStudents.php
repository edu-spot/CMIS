<?php

namespace App\Http\Controllers;

use App\User;
use App\stu_master;
use App\stu_info;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\Redirect;
use Illuminate\Support\Facades\Input;
use Session;
use View;
use Importer;
use Illuminate\Http\Request;

class ImportStudents extends Controller
{


	public function display()
	{

		return View::make('users_view/admin/importstu');
	}



	public function insert()
	{

		if(Input::hasFile('import_file')){
			$path = Input::file('import_file')->getRealPath();
			$excel = Importer::make('Excel');

			$excel->load($path);
			$insert = $excel->getCollection();
			 // $data;
			$i=0;
			if(!empty($insert) && $insert->count()){
				foreach ($insert as $key => $value) {
					$data[] = [
						'stu_first_name' => $value[0],
						'stu_middle_name' => $value[1],
						'stu_last_name' => $value[2],
						'stu_mother_name' => $value[3],
						'stu_gender' => $value[4],
						'stu_dob' => $value[5],
						'stu_email_id' => $value[6],
						'stu_mobile_no' => $value[7],
						'stu_bloodgroup' => $value[8],
						'stu_birthplace' => $value[9],
						'stu_religion' => $value[10],
						'stu_languages' => $value[11],
						'sclass_id'=>$value[12],
						'password'=>'1234567',			
					];
						 //return $data[0]['stu_first_name'];
						// return $data[0]['stu_last_name'];
						$table = new user;

						$createdby = Auth::user()->id;

						$table->name = $data[$i]['stu_first_name'] ;
						$table->email = $data[$i]['stu_email_id'];
						$table->password = bcrypt($data[$i]['password']);
						$table->save();

						$createdby = Auth::user()->id;

						$id = user::where('email', $data[$i]['stu_email_id'])->first();
						$tableM = new stu_master;
						$tableM->user_id = $id['id'];
						$tableM->sclass_id=$data[$i]['sclass_id'];
						$tableM->created_by = $createdby;
						$tableM->save();
						$idm = stu_master::where('user_id', $id['id'])->first();

						$tableI = new stu_info;
						$tableI->stu_first_name = $data[$i]['stu_first_name'];
						$tableI->stu_middle_name = $data[$i]['stu_middle_name'];
						$tableI->stu_last_name = $data[$i]['stu_last_name'];
						$tableI->stu_mother_name = $data[$i]['stu_mother_name'];
						$tableI->stu_gender = $data[$i]['stu_gender'];
						$tableI->stu_dob = $data[$i]['stu_dob'];
						$tableI->stu_email_id = $data[$i]['stu_email_id'];
						$tableI->stu_mobile_no = $data[$i]['stu_mobile_no'];
						$tableI->stu_bloodgroup = $data[$i]['stu_bloodgroup'];
						$tableI->stu_birthplace = $data[$i]['stu_birthplace'];
						$tableI->stu_religion = $data[$i]['stu_religion'];
						$tableI->stu_languages = $data[$i]['stu_languages'];
						$tableI->created_by = $createdby;
						$tableI->stumasterid = $idm['stuid'];
						$tableI->save();


					
						$i=$i+1;
				}
				//return $data;

 // $source = DB::table('stu_masters')->select('stu_first_name','stu_middle_name','stu_last_name','stu_mother_name','stu_gender','stu_dob','stu_email_id','stu_mobile_no','stu_bloodgroup','stu_birthplace','stu_religion','stu_languages','sclass_id')->join('stu_infos','stumasterid','=','stuid')->get();  //export all students
			}
			return back()->with('status', 'Students Added');

		}
	}
}


