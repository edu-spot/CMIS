@extends('users_view.admin.layouts.app')
@section('content')


@if (session('status'))
    <div class="alert alert-success">
        {{ session('status') }}
    </div>
@endif
<div class="container">
    <div class="row">
        <div class="col-md-12">
            <div class="panel panel-default">
                 <div class="panel-heading">Add branch</div>


                 <div class="panel-body">
                    <form class="form-horizontal" method="POST" action="{{ route('addbranches') }}">
                        {{ csrf_field() }}


                        <div class="col-md-6">
                         <div class="form-group{{ $errors->has('branchname') ? ' has-error' : '' }}">
                            <label for="branchname" class="col-md-4 control-label">Branch Name</label>

                            <div class="col-md-6">
                                <input id="branchname" type="text" class="form-control" name="branchname" value="{{ old('branchname') }}" required autofocus>

                                @if ($errors->has('branchname'))
                                    <span class="help-block">
                                        <strong>{{ $errors->first('branchname') }}</strong>
                                    </span>
                                @endif
                            </div>
                        </div>

                        <div class="form-group">
                            <div class="col-md-6 col-md-offset-8">
                                <button type="submit" class="btn btn-primary">
                                    Add Branch
                                </button>
                            </div>
                        </div>


<table class="table table-striped">
	<tr>
		<td>Branch ID</td>
		<td>Branch Name</td>
		<td>Actions</td>
	</tr>

	@foreach ($records as $rec)
{{$res=0}}
		<tr>
			<td>{{ $rec->branchid }}</td>
			<td>{{ $rec->branch_name }}</td>
			<td> <a href="delete/{{$rec->branchid}}">Delete</a></td>
		</tr>

	@endforeach
</table>





                   	 </form>
                </div>
            </div>
       	 </div>
    </div>
</div>



@endsection