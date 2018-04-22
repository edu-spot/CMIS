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

// class InvoicesExport implements FromQuery
// {
   //  public function __construct(Request $req)
   //  {
   //      $this->req = $req;
   //  }

   //  public function query()
   //  {
   //      return DB::table('stu_attendences')->select('stumaster_id','stu_first_name','stu_last_name','status')->join('stu_infos','stumasterid','=','stumaster_id')->where([['branch_id', '=', $req['branch']],
			// 	['sclass_id', '=', $req['sclass']],
			// 	['semester_id', '=', $req['semester']],
			// ])->get();
   //  }
// }

// class InvoicesExport implements FromQuery
// {

// use Exportable;





// protected $sclasss;
// 	public function __construct(int $sclasss)
//     {
// // return $sclass; 
//         $this->sclasss = $sclasss ;


//     }

//     public function query()
//     {	
//     	//return $this->sclass;     	
//         return DB::table('stu_attendences')->select('stumaster_id','stu_first_name','stu_last_name','status')->join('stu_infos','stumasterid','=','stumaster_id')->where('sclass_id' ,'=', $this->sclasss)->get();
//     }
// }


class CreateStudentAttendenceController extends Controller 
{
// use Exporter;
	public function display()
	{
		 // $records = DB::table('branches')->get();
		$branchs = branch::all();
		$timeslots = timeslot::all();
		//return view('users_view.admin.attendence', compact('records'));
		return View::make('users_view/admin/attendence')->with('branchs',$branchs)->with('timeslots',$timeslots);
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



	public function loadsubject(Request $request)
	{

		// $data=semester::select('semester_name','semesterid')->where('branch_ id',$request->branch)->take(100)->get();
		// return response()->json($data);
		// return $request->all();
		$data = subject::select('sub_name', 'subjectid','sub_code')->where('semester_id', $request->id)->get();
		return response()->json($data);



	}



	public function next(Request $data){


		
		$test = DB::table('attcolls')->select('id')->where([
			['timeslot_id', '=', $data['timeslot']],
			['sclass_id', '=', $data['sclass']],
			['attdate', '=', $data['date']],
		])->first();

		if($test)
		{
			//return redirect()->back();
			return redirect()->back()->with('err','Attendence already taken for that day and time');
		}else{
			$students = DB::table('stu_masters')->select('stuid','stu_first_name','stu_last_name')->join('stu_infos','stumasterid','=','stuid')->where('sclass_id' ,'=', $data->sclass )->get();

		//return $data->all();


			return View::make('users_view/admin/storeattendence')->with('data',$data)->with('students',$students);

		}



	}



	public function sto(Request $data)
	{
		// return $data->all();
		$createdby = Auth::user()->id;
		
		$tablea = new attcoll;
		$tablea->attdate = $data['date'];
		$tablea->timeslot_id = $data['timeslot'];
		$tablea->branch_id = $data['branch'];
		$tablea->semester_id = $data['semester'];
		$tablea->sclass_id = $data['sclass'];
		$tablea->subject_id = $data['subject'];
		$tablea->created_by = $createdby;
		$tablea->save();


		$attid = DB::table('attcolls')->select('id')
		->where([
			['timeslot_id', '=', $data['timeslot']],
			['sclass_id', '=', $data['sclass']],
			['subject_id', '=', $data['subject']],
			['attdate', '=', $data['date']],

		])->first();


		// $a=$attid->id;
		$f = $data->count;
		$f = $f+1; 
		$x = '1000';
		for ( $i = 1; $i < $f; $i++) {
			
			$table = new stu_attendence;

			$createdby = Auth::user()->id;

			$table->attdate = $data['date'];
			if($data->$i == 'yes'){
				$table->status = '1';
			}else{
				$table->status = '0';
			}
			$table->attcoll_id = $attid->id;
			$table->timeslot_id = $data['timeslot'];
			$table->branch_id = $data['branch'];
			$table->semester_id = $data['semester'];
			$table->sclass_id = $data['sclass'];
			$table->subject_id = $data['subject'];
			$table->stumaster_id = $data[$x];
			$table->created_by = $createdby;
			
			$table->save();
			$x=$x + '1';
		}
		

		$branchs = branch::all();
		$timeslots = timeslot::all();
		//return view('users_view.admin.attendence', compact('records'));
		return View::make('users_view/admin/attendence')->with('status','Attendence Added Successfully')->with('branchs',$branchs)->with('timeslots',$timeslots);

	}



	public function viewa()
	{

		$branchs = branch::all();
		$timeslots = timeslot::all();
		//return view('users_view.admin.attendence', compact('records'));
		return View::make('users_view/admin/viewatt')->with('branchs',$branchs)->with('timeslots',$timeslots);
	}


	public function viewatt(Request $data)
	{
		$branchs = branch::all();
		$timeslots = timeslot::all();

		$attid = DB::table('attcolls')->select('id')->where([['timeslot_id', '=', $data['timeslot']],['sclass_id', '=', $data['sclass']],['subject_id', '=', $data['subject']],['attdate', '=', $data['date']]])->first();
		if($attid)
		{
			
			$source = DB::table('stu_attendences')->select('stumaster_id','status','stu_first_name','stu_last_name')->join('stu_infos','stumasterid','=','stumaster_id')->where([['attcoll_id','=', $attid->id],
				['timeslot_id', '=', $data['timeslot']],
				['sclass_id', '=', $data['sclass']],
				['subject_id', '=', $data['subject']],
				['attdate', '=', $data['date']]
			])->get();
			// return $source->all();

			return View::make('users_view/admin/attview')->with('data',$data)->with('source',$source);        
		}
		else {
			
		//return view('users_view.admin.attendence', compact('records'));
			return View::make('users_view/admin/viewatt')->with('status','Cant Find The Record')->with('branchs',$branchs)->with('timeslots',$timeslots);

		}
	}



	public function downatt()
	{

		$branchs = branch::all();
		//return view('users_view.admin.attendence', compact('records'));
		return View::make('users_view/admin/saveatt')->with('branchs',$branchs);
	}


	public function downreturn(Request $req)
	{
		//return $req;
		//$sclass= $req->sclass;

//return $sclass;

// $source = DB::table('stu_masters')->select('stu_first_name','stu_middle_name','stu_last_name','stu_mother_name','stu_gender','stu_dob','stu_email_id','stu_mobile_no','stu_bloodgroup','stu_birthplace','stu_religion','stu_languages','sclass_id')->join('stu_infos','stumasterid','=','stuid')->get();  //export all students

		$source = DB::table('stu_attendences')->select('stumaster_id','stu_first_name','stu_last_name','attdate','status')->join('stu_infos','stumasterid','=','stumaster_id')->where([['branch_id', '=', $req['branch']],
			['sclass_id', '=', $req['sclass']],
			['semester_id', '=', $req['semester']],
		])->get();  //working code



		return Exporter::make('Excel')->load($source)->stream('att.csv'); //working line very usefull 







		// return $source;

		    // return Excel::download( $req, 'invoices.xlsx');
		    // return (new InvoicesExport($req->sclass))->download('invoices.csv');


		// return Excel::download('attendence', function($excel) use ($source) {
		// 	$excel->sheet('mySheet', function($sheet) use ($source)
	 //        {
		// 		$sheet->fromArray($source);
	 //        });
		// })->download($type);

	}

}
