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

<div class="container">
	<div class="row">
		<div class="col-md-11">
			<div class="panel panel-default">
				<div class="panel-heading">Take attendence</div>



				<div class="panel-body">
					<form class="form-horizontal" method="POST" action="{{ route('storemarks') }}">
						{{ csrf_field() }}


						<div class="col-md-6">
							<label for="branch" class="col-md-4 control-label">Branch</label>
							<div class="col-md-6">
								<input type="text" name="branch" class="form-control" value="{{ $data->branch }}" readonly>
							</div>
						</div>


						<div class="col-md-6">
							<label for="semester" class="col-md-4 control-label">Semester</label>
							<div class="col-md-6">
								<input type="text" name="semester" class="form-control" value="{{ $data->semester }}" readonly>
							</div>
						</div>

						<div class="col-md-6">
							<label for="sclass" class="col-md-4 control-label">Class</label>
							<div class="col-md-6">
								<input type="text" name="sclass" class="form-control" value="{{ $data->sclass }}" readonly>
							</div>
						</div>

						<div class="col-md-6">
							<label for="subject" class="col-md-4 control-label">Subject</label>
							<div class="col-md-6">
								<input type="text" name="subject" class="form-control" value="{{ $data->subject }}" readonly>
							</div>
						</div>

						<div class="col-md-6">
							<label for="mtype" class="col-md-4 control-label">Marks Type</label>
							<div class="col-md-6">
								<input type="text" name="mtype" class="form-control" value="@php
									if($data->mtype == 0)
									{
										echo 'Theory';
									}
									else{
										echo 'Practicle';
									}
								@endphp" readonly>
							</div>
						</div>

						<div class="col-md-6">
							<label for="date" class="col-md-4 control-label">Maximum Marks</label>
							<div class="col-md-6">
								<input type="text" name="mtype" class="form-control" value="@php
									if($data->mtype == 0)
									{
										echo '20';
									}
									else{
										echo '25';
									}
								@endphp" readonly>
							</div>
						</div>

						<input type="hidden" name="markscategoriesid" value="{{ $test->markscategoryid }}">


						<table class="table table-striped">
							<tr>
								<td>Index</td>
								<td>Stu id</td>
								<td>First Name</td>
								<td>Last Name</td>
								<td>UT 1</td>
								<td>UT 2</td>
							</tr>
							@php
							$i=1;
							$x=1000;
							@endphp

							@foreach ($students as $students)

							<tr>
								<td> @php echo $i @endphp </td>
								<td><input type="hidden" name="{{ $x }}" id="{{ $students->stuid }}" class="form-control" value="{{ $students->stuid }}" readonly>{{ $students->stuid }}</td>
								<td>{{ $students->stu_first_name }}</td>
								<td>{{ $students->stu_last_name }}</td>
								<td><label for="ut1"><input type="text" name="ut1{{ $i }}" id="ut1{{ $students->stuid }}" value="" /></label></td>
								<td><label for="ut2"><input type="text" name="ut2{{ $i }}" id="ut2{{ $students->stuid }}" value="" checked="checked"/></label></td>
								</tr>
								@php
								$count=$i;
								$i=$i+1;
								$x=$x+1;
								@endphp
								@endforeach

								<input type="hidden" name="count" id="count" class="form-control" value="{{  $count }}" >
							</table>


							<div class="form-group">
								<div class="col-md-6 col-md-offset-8">
									<button type="submit" class="btn btn-primary">
										Take Attendence
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






@endsection