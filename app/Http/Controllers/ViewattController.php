<?php

namespace App\Http\Controllers;
use Maatwebsite\Excel;
use App\Http\Controllers\Controller;
// use Maatwebsite\Excel\Concerns\FromQuery;
use View;
use DB;
use App\attcoll;
use App\sclass;
use App\stu_master;
use App\stu_attendence;
use App\subject;
use App\branch; 
use Illuminate\Support\Facades\Auth;
use Illuminate\Http\Request;
// use Maatwebsite\Excel\Concerns\Exportable;
use session;
use Cyberduck\LaravelExcel\ExporterFacade;
use Exporter;
use Cyberduck\LaravelExcel\ExcelServiceProvider;

use Illuminate\Database\Eloquent\Model;
use Cyberduck\LaravelExcel\Contract\SerialiserInterface;

class ViewattController extends Controller
{
	public function display()
	{

		$id = Auth::user()->id;
		$stu = stu_master::select('stuid','sclass_id')->where('user_id', $id)->first();
		$semid = sclass::select('semester_id')->where('sclassid',$stu->sclass_id)->first();
		$sub = subject::select('subjectid', 'sub_name')->where('semester_id', $semid->semester_id)->get();
		$count = count($sub);
		$total[] = array();
		$present[]= array();
		$percentage[]= array();

		for ( $i = 0; $i < $count; $i++) {
			$x= 0;
			$entry = DB::table('stu_attendences')->select('status')->where([['stumaster_id', '=', $stu['stuid']],['subject_id','=',$sub[$i]->subjectid]])->get();
			 
			$y=count($entry);
			$total[]=$y;
			// return $entry;
			foreach ($entry as $entry)
			{
				if($entry->status == 1){
					$x=$x+1;
				}
			}
			$present []= $x;
			$percentage [] = (($x/$y)*100);
			// return $present;
		}
		// return $present;

		return View::make('users_view/student/stuatt')->with('sub',$sub)->with('percentage',$percentage)->with('count',$count);
	}
}
