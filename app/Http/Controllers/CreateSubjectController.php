<?php

namespace App\Http\Controllers;

use View;
use DB;
use App\branch;
use App\sclass;
use App\semester;
use App\marks_categories;
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
        $mata = marks_categories::where('subject_id',$value)->get();
         foreach ($mata as $mata) {
         $go = $mata->delete(); 
         }
         
         if($go == 'success')
         {
       $record = subject::where('subjectid',$value)->first();
       $state = $record->delete(); 
       if($state == 'success')
       {   
        return redirect()->back()->with('status','Subject entry Deleted');
    }
    // }
}
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

 // return $data;

 $table = new subject;
 $table->sub_name = $data['subjectname'];
 $table->sub_alais = $data['subjectalais'];
 $table->sub_code = $data['subjectcode'];
 $table->semester_id = $data['semester_id'];
 $createdby = Auth::user()->id;
 $table->created_by = $createdby;
 $table->save();

 $subid = DB::table('subjects')->select('subjectid')->where( 'sub_code', '=' , $data['subjectcode'])->first();
         // $fff = 'theory'.$data['subjectalais']; 
         // return $fff;
        // return response()->json($subid);
 $prac=1;
 $theo=0;
 if($data['theory'] == 1)
 {   
    $tablec = new marks_categories;
    $tablec->subject_id = $subid->subjectid;
    $tablec->type = '0';
    $tablec->marks_category_name = 'theory_'.$data['subjectname'];
    $tablec->marks_category_alias = 'th_'.$data['subjectalais'];
    $tablec->min_marks = $data['theorymin'];
    $tablec->max_marks = $data['theorymax'];
    $tablec->created_by = $createdby;
    $tablec->save();
}


if($data['Pactical'] == 1)
 {
    $tablec = new marks_categories;
    $tablec->subject_id = $subid->subjectid;
    $tablec->type = '1';
    $tablec->marks_category_name = 'practical_'.$data['subjectname'];
    $tablec->marks_category_alias = 'pr_'.$data['subjectalais'];
    $tablec->min_marks = $data['Practicalmin'];
    $tablec->max_marks = $data['Practicalmax'];
    $tablec->created_by = $createdby;
    $tablec->save();
}



return redirect()->back()->with('status', 'Subject Added');





}
}
