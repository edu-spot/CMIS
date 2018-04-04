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
                 <div class="panel-heading">Add Semester</div>


                 <div class="panel-body">
                    <form class="form-horizontal" method="POST" action="{{ route('addsemesters') }}">
                        {{ csrf_field() }}


                        <div class="col-md-6">
                         <div class="form-group{{ $errors->has('semestername') ? ' has-error' : '' }}">
                            <label for="semestername" class="col-md-4 control-label">Semester Name</label>

                            <div class="col-md-6">
                                <input id="semestername" type="text" class="form-control" name="semestername" value="{{ old('semestername') }}" required autofocus>

                                @if ($errors->has('semestername'))
                                    <span class="help-block">
                                        <strong>{{ $errors->first('semestername') }}</strong>
                                    </span>
                                @endif
                            </div>
                        </div>


                        
                         <div class="form-group{{ $errors->has('branch_id') ? ' has-error' : '' }}">
                            <label for="branch_id" class="col-md-4 control-label">Branch</label>
                       
                            <div class="col-md-6">
                             <select class="form-control" name="branch_id">
                             @foreach($brn as $brn)
                             <option value="{{$brn->branchid}}">{{$brn->branch_name}}</option>
                             @endforeach
                             </select>
                         </div>
                     </div>
                      


                        <div class="form-group">
                            <div class="col-md-6 col-md-offset-8">
                                <button type="submit" class="btn btn-primary">
                                    Add Semester
                                </button>
                            </div>
                        </div>
                    </div>



<table class="table table-striped">
	<tr>
		<td>Number</td>
		<td>Semester Name</td>
        <td>Branch id</td>
		<td>Actions</td>
	</tr>
@php
    $i=1
    @endphp

	@foreach ($records as $rec)

		<tr>
			<td> @php echo $i @endphp </td>
			<td>{{ $rec->semester_name }}</td>
            <td>{{$rec->branch_id}}</td>
			<td> <a href="semesterdelete/{{$rec->semesterid}}">Delete</a></td>
		</tr>
        @php
        $i=$i+1

    @endphp
    @endforeach
</table>





                   	 </form>
                </div>
            </div>
       	 </div>
    </div>
</div>



@endsection