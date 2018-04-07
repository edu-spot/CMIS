@extends('users_view.admin.layouts.app')
@section('content')


@if (session('status'))
<div class="alert alert-success">
  {{ session('status') }}
</div>
@endif

@if (session('err'))
<div class="alert alert-error">
  {{ session('err') }}
</div>
@endif



@php
$da=date("d/m/Y");
@endphp

<div class="container">
  <div class="row">
    <div class="col-md-11">
      <div class="panel panel-default">
       <div class="panel-heading">Take Attendence</div>
       

       <form class="form-horizontal" method="POST" action="{{ route('stoatt') }}">
        {{ csrf_field() }}

        <div class="panel-body">
          <div class="col-md-6">




           <div class="form-group">
            <label for="branch_id" class="col-md-4 control-label">Branch</label>
            <select class="branch" name="branch" id="branch_id">
             <option value="0" disabled="true" selected="true">-Select-</option>
             @foreach($branchs as $branchs)
             <option value="{{$branchs->branchid}}">{{ $branchs->branch_name}}</option>
             @endforeach

           </select>
         </div>
         
         <div class="form-group">           
           <label for="semester_id" class="col-md-4 control-label">Semester</label>
           <select name="semester" class="semester" id="semester_id">
             <option value="0" >-Select-</option>
           </select>    
         </div>    



         <div class="form-group">           
           <label for="sclass_id" class="col-md-4 control-label">Class</label>
           <select name="sclass" class="sclass" id="sclass_id">
             <option value="" >-Select-</option>
           </select>    
         </div>     



         <div class="form-group">           
           <label for="subject" class="col-md-4 control-label">Subject</label>
           <select name="subject" class="subject" id="subject_id">
             <option value="" >-Select-</option>
           </select>    
         </div>


         <div class="form-group">
          <label for="timeslot_id" class="col-md-4 control-label">Select Lecture or Practicle Time</label>
          <select class="timeslot" name="timeslot" id="timeslot_id">
           <option value="0" disabled="true" selected="true">-Select-</option>
           @foreach($timeslots as $timeslots)
           <option value="{{$timeslots->id}}">{{ $timeslots->time}}</option>
           @endforeach

         </select>
       </div>    



       <div class="form-group">           
         <label for="date" class="col-md-4 control-label">Date</label>
         <input type="date" name="date" class="date" id="date" value="@php echo $da @endphp"></input>   
         </div>
         


         <div class="form-group">
         <div class="col-md-6 col-md-offset-8">
         <button type="submit" class="btn btn-primary">
         Next
         </button>
         </div>
         </div>



         </div>
         </form>
         </div>
         </div>
         </div>
         </div>
         </div>
         </div>

<script src="http://code.jquery.com/jquery-3.3.1.min.js"
integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8="
crossorigin="anonymous">
</script>
<script>



jQuery(document).ready(function(){

  $(document).on('change','.branch',function(){
    var branch = $(this).val();
    console.log(branch);
    

    $.ajax({
      url: '{{ asset('/loadsemester')}}',
      method:'GET',
                // dataType:'json',
      data:{'id':branch},
      success: function(ressem){
        console.log(ressem.length); 
        if(ressem.length == '0'){
          $('select[name="semester"]').empty();
          
          $('select[name="semester"]').append('<option value="0">No semesters found</option>');
          
        }else{  
         $('select[name="semester"]').empty();
         $('select[name="semester"]').append('<option value="0" disabled="true" selected="true">-Select-</option>');
         $.each(ressem, function(key, value) {
          $('select[name="semester"]').append('<option value="'+  value.semesterid +'">'+ value.semester_name +'</option>');
                            //console.log(value.semesterid);
        });
      }
    },
    error:function(){
      console.log("error");
    }
  });
});

$(document).on('change','.semester',function(){
  var semester = $(this).val();
  console.log(semester);

  $.ajax({
    url:'{{ asset('/loadsclass') }}',
    method:'GET',
    data:{'id':semester},
    success: function(ressclass){
      console.log(ressclass.length); 
      if(ressclass.length == '0'){
        $('select[name="sclass"]').empty();
        
        $('select[name="sclass"]').append('<option value="0">No class found</option>');
        
      }else{  
       $('select[name="sclass"]').empty();
       $('select[name="sclass"]').append('<option value="0" disabled="true" selected="true">-Select-</option>');
       $.each(ressclass, function(key, value) {
        $('select[name="sclass"]').append('<option value="'+  value.sclassid +'">'+ value.sclass_name +'</option>');
                            //console.log(value.semesterid);
      });
    }
  },
  error:function(){
    console.log("error");
  }
});


});



$(document).on('change','.semester',function(){
  var semester = $(this).val();
  console.log(semester);

  $.ajax({
    url:'{{ asset('/loadsubject') }}',
    method:'GET',
    data:{'id':semester},
    success: function(ressubject){
      console.log(ressubject.length); 
      if(ressubject.length == '0'){
        $('select[name="subject"]').empty();
        
        $('select[name="subject"]').append('<option value="0">No Subject found</option>');
        
      }else{  
       $('select[name="subject"]').empty();
       $('select[name="subject"]').append('<option value="0" disabled="true" selected="true">-Select-</option>');
       $.each(ressubject, function(key, value) {
        $('select[name="subject"]').append('<option value="'+  value.subjectid +'">'+ value.sub_name +'</option>');
                            //console.log(value.semesterid);
      });
    }
  },
  error:function(){
    console.log("error");
  }
});


});

});



</script>



@endsection