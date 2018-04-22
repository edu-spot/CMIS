@extends('users_view.teacher.layouts.app')
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
<div class="container">
	<div class="row">
		<div class="col-md-11">
			<div class="panel panel-default">
				<div class="panel-heading">View Marks</div>


				<form class="form-horizontal" method="POST" action="{{ route('vmarks') }}">
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
								<label for="mtype" class="col-md-4 control-label">Marks Type</label>
								<select name="mtype" class="mtype" id="mtype_id">
									<option value="0" >Theory</option>
									{{-- <option value="1" >Practical</option> --}}
								</select>    
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