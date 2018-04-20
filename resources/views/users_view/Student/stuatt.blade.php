@extends('users_view.student.layouts.app')


@section('content')
@if (session('status'))
<div class="alert alert-success">
	{{ session('status') }}
</div>
@endif
@if($errors->any())
<div class="alert alert-error">
	{{$errors->first()}}
</div>
@endif

<div class="container">
	<div class="row">
		<div class="col-md-11">
			<div class="panel panel-default">
				<div class="panel-heading">View Attendence</div>
				<div class="panel-body">
					<div class="col-md-6">

						<table id="mytable" name="mytable" class="table table-striped">
							<thead>
								<tr>
									<th>Subject</th>
									<th>Percentage Present</th>
								</tr>
							</thead>
							@php
								$i=0;

							@endphp

								@for ($i = 0; $i < $count ; $i++)
									
								
								<tr>
									<td>{{ $sub[$i]->sub_name}}</td>
									<td>{{ $percentage[$i+1] }} %</td>
								</tr>


								@endfor

						</table>




					</div>
				</div>
			</div>
		</div>
	</div>




	@endsection