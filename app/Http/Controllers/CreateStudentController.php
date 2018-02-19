<?php

namespace App\Http\Controllers;

use App\User;
use App\stu_master;
use App\stu_info;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\Redirect;


class CreateStudentController extends Controller
{





	 public function __construct()
    {
       // $this->middleware('guest', ['except' => ['getLogout', 'getRegister', 'postRegister']]);
        $this->middleware('adminmiddleware');
    }








	protected function validator(array $data)
    {
        return Validator::make($data, [
            'name' => 'required|string|max:255',
            'email' => 'required|string|email|max:255|unique:users',
            'password' => 'required|string|min:6|confirmed',
        ]);
    }


   public function view()
   {	
   		$data = array(
   		$user = user::find(7),
    	$stu = user::find(7)->stu_master,
    	);
    	return $data;
    	
   // 	return view('home',compact('user'));
    }






    public function create(Request $data){

       //  $this->validator($request->all())->validate();
        // $validator= Validator::make($data, [
        //     'name' => 'required|string|max:255',
        //     'email' => 'required|string|email|max:255|unique:users',
        //     'password' => 'required|string|min:6|confirmed',
        // ]);

        // if($validator ->fails()){
        //     return redirect()->back()->withErrors('error enter correct data');
        // }
return Redirect::back()->withErrors(['Incorrect data ! Enter correct data ', 'The Message']);


    	$table = new user;

    	$admin = Auth::user()->id;
    	
    	$table->name = $data['name'];
    	$table->email = $data['email'];
        $table->password = bcrypt($data['password']);
        $table->save();

        $admin = Auth::user()->id;

        $id = user::where('email', $data['email'])->first();
        $tableM = new stu_master;
        $tableM->user_id = $id['id'];
        $tableM->created_by = $admin;
        $tableM->save();
        $idm = stu_master::where('user_id', $id['id'])->first();

        $tableI = new stu_info;
        $tableI->stu_first_name = $data['first_name'];
        $tableI->stu_middle_name = $data['middle_name'];
        $tableI->stu_last_name = $data['last_name'];
        $tableI->stu_mother_name = $data['mother_name'];
        $tableI->stu_gender = $data['gender'];
        $tableI->stu_dob = $data['dob'];
        $tableI->stu_email_id = $data['email'];
        $tableI->stu_mobile_no = $data['mobile'];
        $tableI->stu_bloodgroup = $data['blood'];
        $tableI->stu_birthplace = $data['birthplace'];
        $tableI->stu_religion = $data['religion'];
        $tableI->stu_languages = $data['language'];

        $tableI->stumasterid = $idm['stuid'];
        $tableI->save();

                
return redirect('/add')->with('status', 'Student Created');



        //$star = stu_master::where('user_id', $id['id'])->first();
        //$star = stu_master::find(2)->user;
    	//return $star;
    	//return view('home',compact('user'))

    }
}
