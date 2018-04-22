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
				<div class="panel-heading">View Marks</div>
				<div class="panel-body">
					<div class="col-md-6">


						<table id="mytable" name="mytable" class="table table-striped">
							<thead>
								<tr>
									<th>Subject</th>
									<th>UT 1 Marks</th>
									<th>UT 2 Marks</th>
								</tr>
							</thead>
							@foreach ($source as $source)
								<tr>
									<td>{{ $source->sub_name }}</td>
									<td>{{ $source->obtained_marks_ut1 }}</td>
									<td>{{ $source->obtained_marks_ut2 }}</td>
								</tr>
							@endforeach
						</table>




					</div>
				</div>
			</div>
		</div>
	</div>




	@endsection