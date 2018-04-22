<?php

namespace App\Http\Controllers;
use Maatwebsite\Excel;
use App\Http\Controllers\Controller;
// use Maatwebsite\Excel\Concerns\FromQuery;
use View;
use DB;
use App\semester;
use App\attcoll;
use App\sclass;
use App\stu_master;
use App\marks_master;
use App\stu_attendence;
use App\subject;
use App\branch; 
use App\timeslot;
use Illuminate\Support\Facades\Auth;
use Illuminate\Http\Request;
// use Maatwebsite\Excel\Concerns\Exportable;
use session;
use Cyberduck\LaravelExcel\ExporterFacade;
use Exporter;
use Cyberduck\LaravelExcel\ExcelServiceProvider;

use Illuminate\Database\Eloquent\Model;
use Cyberduck\LaravelExcel\Contract\SerialiserInterface;


class AddMarksController extends Controller
{

	public function display()
	{
		 // $records = DB::table('branches')->get();
		$branchs = branch::all();
		// $timeslots = timeslot::all();
		//return view('users_view.admin.attendence', compact('records'));
		if (Auth::user() &&  Auth::user()->user_type == 'A')
			{
				return View::make('users_view/admin/marks')->with('branchs',$branchs);
			}
			return View::make('users_view/teacher/marks')->with('branchs',$branchs);
		}




		public function next(Request $data){

		// return $data;

			$test = DB::table('marks_categories')->select('markscategoryid')->where([
				['subject_id', '=', $data['subject']],
				['type', $data['mtype']],
			])->first();
		// return $test->markscategoryid;
			if($test)
			{
				$students = DB::table('stu_masters')->select('stuid','stu_first_name','stu_last_name')->join('stu_infos','stumasterid','=','stuid')->where('sclass_id' ,'=', $data->sclass )->get();
				if (Auth::user() &&  Auth::user()->user_type == 'A')
					{
						return View::make('users_view/admin/storemarks')->with('data',$data)->with('students',$students)->with('test',$test);
					}
					return View::make('users_view/teacher/storemarks')->with('data',$data)->with('students',$students)->with('test',$test);



			//return redirect()->back();
		// 	
				}else
				{
					return redirect()->back()->with('err','Practicle or Theory Not Present for that Subject ');
				}
		//return $data->all();








			}




			public function sto(Request $data)
			{
	// return $data->all();
				$createdby = Auth::user()->id;

		// $tablea = new marks_masters;
		// $tablea->attdate = $data['date'];
		// $tablea->timeslot_id = $data['timeslot'];
		// $tablea->branch_id = $data['branch'];
		// $tablea->semester_id = $data['semester'];
		// $tablea->sclass_id = $data['sclass'];
		// $tablea->subject_id = $data['subject'];
		// $tablea->created_by = $createdby;
		// $tablea->save();


		// $attid = DB::table('attcolls')->select('id')
		// ->where([
		// 	['timeslot_id', '=', $data['timeslot']],
		// 	['sclass_id', '=', $data['sclass']],
		// 	['subject_id', '=', $data['subject']],
		// 	['attdate', '=', $data['date']],

		// ])->first();


		// $a=$attid->id;
				$f = $data->count;
				$f = $f+1; 
				$x = '1000';
				for ( $i = 1; $i < $f; $i++) {

					$table = new marks_master;

					$createdby = Auth::user()->id;

			// $table->attdate = $data['date'];
			// if($data->$i == 'yes'){
			// 	$table->status = '1';
			// }else{
			// 	$table->status = '0';
			// }
			// $table->attcoll_id = $attid->id;
			// $table->timeslot_id = $data['timeslot'];
			// $table->branch_id = $data['branch'];
			// $table->semester_id = $data['semester'];
			// $table->sclass_id = $data['sclass'];
					$inc= 'ut1'.$i;
					$mmm = $data->$inc;
					if($mmm)
					{
						$table->obtained_marks_ut1 = $data->$inc;
					}

					$inc= 'ut2'.$i;
					$mmm = $data->$inc;
		// return $mmm;
					if($mmm)
					{
						$table->obtained_marks_ut2 = $data->$inc;
					}

					$table->subject_id = $data['subject'];
					$table->stu_id = $data[$x];
					$table->markscategory_id = $data['markscategoriesid'];
					$table->created_by = $createdby;
		// return $table;
					$table->save();
					$x=$x + '1';
				}


				$branchs = branch::all();
		// $timeslots = timeslot::all();
		//return view('users_view.admin.attendence', compact('records'));
				if (Auth::user() &&  Auth::user()->user_type == 'A')
					{
						return View::make('users_view/admin/marks')->with('branchs',$branchs);
					}
					return View::make('users_view/teacher/marks')->with('branchs',$branchs);

				}





				public function viewm()
				{
		 // $records = DB::table('branches')->get();
					$branchs = branch::all();
		// $timeslots = timeslot::all();
		//return view('users_view.admin.attendence', compact('records'));
					if (Auth::user() &&  Auth::user()->user_type == 'A')
						{
							return View::make('users_view/admin/viewmarks')->with('branchs',$branchs);
						}
						return View::make('users_view/teacher/viewmarks')->with('branchs',$branchs);
					}



					public function viewatt(Request $data)
					{
		// $branchs = branch::all();
		// $timeslots = timeslot::all();

		// $attid = DB::table('attcolls')->select('id')
		// ->where([
		// 	['timeslot_id', '=', $data['timeslot']],
		// 	['sclass_id', '=', $data['sclass']],
		// 	['subject_id', '=', $data['subject']],
		// 	['attdate', '=', $data['date']],

		// ])->first()->id;


						$test = DB::table('marks_categories')->select('markscategoryid')->where([
							['subject_id', '=', $data['subject']],
							['type', $data['mtype']],
						])->first();
						if($test)
						{

							$source = DB::table('marks_masters')->join('stu_infos','stumasterid','=','stu_id')->where([
								['subject_id', '=', $data['subject']],
								['markscategory_id','=' ,$test->markscategoryid]
							])->get();
			//  return $source->all();
if (Auth::user() &&  Auth::user()->user_type == 'A')
       {
            return View::make('users_view/admin/marksview')->with('data',$data)->with('source',$source);
     }
     return View::make('users_view/teacher/marksview')->with('data',$data)->with('source',$source);        
						}
						else {

		//return view('users_view.admin.attendence', compact('records'));
							if (Auth::user() &&  Auth::user()->user_type == 'A')
       {
            return View::make('users_view/admin/viewatt')->with('status','Cant Find The Record')->with('branchs',$branchs)->with('timeslots',$timeslots);
     }
			return View::make('users_view/teacher/viewatt')->with('status','Cant Find The Record')->with('branchs',$branchs)->with('timeslots',$timeslots);

						}
					}




					public function individual()
					{
						$id = Auth::user()->id;
						$stu = stu_master::select('stuid','sclass_id')->where('user_id', $id)->first();
						$semid = sclass::select('semester_id')->where('sclassid',$stu->sclass_id)->first();
						$sub = subject::select('subjectid', 'sub_name')->where('semester_id', $semid->semester_id)->get();

						$source = DB::table('marks_masters')->join('subjects','subjectid','=','subject_id')->where([['stu_id', '=', $stu['stuid']]])->get();
		// return $source;

						return View::make('users_view/student/stumarks')->with('source',$source);
					}



					public function downmarks()
					{

						$branchs = branch::all();
		// $timeslots = timeslot::all();
		//return view('users_view.admin.attendence', compact('records'));
				if (Auth::user() &&  Auth::user()->user_type == 'A')
       {
            return View::make('users_view/admin/savemarks')->with('branchs',$branchs);
     }		
						return View::make('users_view/teacher/savemarks')->with('branchs',$branchs);

					}



					public function downreturn(Request $req)
					{
		//return $req;
		//$sclass= $req->sclass;

//return $sclass;

// $source = DB::table('stu_masters')->select('stu_first_name','stu_middle_name','stu_last_name','stu_mother_name','stu_gender','stu_dob','stu_email_id','stu_mobile_no','stu_bloodgroup','stu_birthplace','stu_religion','stu_languages','sclass_id')->join('stu_infos','stumasterid','=','stuid')->get();  //export all students
// return $req;

						$sub = subject::select('subjectid', 'sub_name')->where('subjectid', $req->subject)->first();
		 // return $sub;
		// $source = array();
		// foreach ($sub as $sub) {

						$source = DB::table('marks_masters')->select('stu_id','stu_first_name','stu_last_name','obtained_marks_ut1','obtained_marks_ut2','subject_id')->join('stu_infos','stumasterid','=','stu_id')->where([['subject_id', '=', $req->subject],
		])->get();  //working code

		// }

		//return $source;


						return Exporter::make('Excel')->load($source)->stream($sub->sub_name.'_Marks.csv'); 




					}


				}
