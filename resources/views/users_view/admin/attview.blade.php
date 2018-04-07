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
<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/v/dt/dt-1.10.16/datatables.min.css"/>





<div class="container">
	<div class="row">
		<div class="col-md-11">
			<div class="panel panel-default">
				<div class="panel-heading">View Attendence</div>
				<div class="panel-body">

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
						<label for="timeslot" class="col-md-4 control-label">Timeslot</label>
						<div class="col-md-6">
							<input type="text" name="timeslot" class="form-control" value="{{ $data->timeslot }}" readonly>
						</div>
					</div>

					<div class="col-md-6">
						<label for="date" class="col-md-4 control-label">Date</label>
						<div class="col-md-6">
							<input type="date" name="date" class="form-control" value="{{ $data->date }}" readonly>
						</div>
					</div>


					<table id="mytable" name="mytable" class="table table-striped">
						<thead>
							<tr>
								<th>Number</th>
								<th>Student ID</th>
								<th>First Name</th>
								<th>Last Name</th>
								<th>Presence Status</th>
							</tr>
						</thead>
						@php
						$i=1
						@endphp
						<tbody>
							@foreach ($source as $source)

							<tr>
								<td> @php echo $i @endphp </td>
								<td>{{ $source->stumaster_id }}</td>
								<td>{{ $source->stu_first_name }}</td>
								<td>{{ $source->stu_last_name }}</td>
								<td>@php
								if($source->status == '1')
								{
									echo "yes";
								}else{
									echo "no";
								}
							@endphp</td>
							{{--  <td>{{$rec->duration}}</td> --}}
							
						</tr>
						
						@php
						$i=$i+1

						@endphp
						@endforeach
					</tbody>
					<tfoot>
						<tr>
							<th>Number</th>
							<th>Student ID</th>
							<th>First Name</th>
							<th>Last Name</th>
							<th>Status</th>
						</tr>

					</tfoot>
				</table>



			</div>
		</div>
	</div>
</div>





</div>
</div>
</div>
</div>
</div>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<script type="text/javascript" src="https://cdn.datatables.net/v/dt/dt-1.10.16/datatables.min.js"></script>
<script>
	
	$(document).ready(function(){

		$('#mytable').DataTable();
	});
</script>




@endsection


