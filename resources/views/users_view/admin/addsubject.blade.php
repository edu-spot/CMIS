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
                 <div class="panel-heading">Add Subject</div>


                 <div class="panel-body">
                    <form class="form-horizontal" method="POST" action="{{ route('addsubjects') }}">
                        {{ csrf_field() }}


                        <div class="col-md-6">
                         <div class="form-group{{ $errors->has('subjectname') ? ' has-error' : '' }}">
                            <label for="subjectname" class="col-md-4 control-label">Subject Name</label>

                            <div class="col-md-6">
                                <input id="subjectname" type="text" class="form-control" name="subjectname" value="{{ old('subjectname') }}" required autofocus>

                                @if ($errors->has('subjectname'))
                                    <span class="help-block">
                                        <strong>{{ $errors->first('subjectname') }}</strong>
                                    </span>
                                @endif
                            </div>
                        </div>


                        <div class="form-group{{ $errors->has('subjectalais') ? ' has-error' : '' }}">
                            <label for="subjectalais" class="col-md-4 control-label">Subject Alais</label>

                            <div class="col-md-6">
                                <input id="subjectalais" type="text" class="form-control" name="subjectalais" value="{{ old('subjectalais') }}" required autofocus>

                                @if ($errors->has('subjectalais'))
                                    <span class="help-block">
                                        <strong>{{ $errors->first('subjectalais') }}</strong>
                                    </span>
                                @endif
                            </div>
                        </div>





                            <div class="form-group{{ $errors->has('subjectcode') ? ' has-error' : '' }}">
                            <label for="subjectcode" class="col-md-4 control-label">Subject Code</label>

                            <div class="col-md-6">
                                <input id="subjectcode" type="text" class="form-control" name="subjectcode" value="{{ old('subjectcode') }}" required autofocus>

                                @if ($errors->has('subjectcode'))
                                    <span class="help-block">
                                        <strong>{{ $errors->first('subjectcode') }}</strong>
                                    </span>
                                @endif
                            </div>
                        </div>


                        
                         <div class="form-group{{ $errors->has('semester_id') ? ' has-error' : '' }}">
                            <label for="semester_id" class="col-md-4 control-label">Semester</label>
                       
                            <div class="col-md-6">
                             <select class="form-control" name="semester_id">
                             @foreach($brn as $brn)
                             <option value="{{$brn->semesterid}}">{{$brn->semester_name}}</option>
                             @endforeach
                             </select>
                         </div>
                     </div>
                      


                        <div class="form-group">
                            <div class="col-md-6 col-md-offset-8">
                                <button type="submit" class="btn btn-primary">
                                    Add Subjet
                                </button>
                            </div>
                        </div>



<table class="table table-striped">
	<tr>
		<td>Number</td>
		<td>Subject Name</td>
        <td>Subject Alais</td>
        <td>Subject Code</td>
        <td>Branch id</td>
		<td>Actions</td>
	</tr>
@php
    $i=1
    @endphp

	@foreach ($records as $rec)

		<tr>
			<td> @php echo $i @endphp </td>
			<td>{{ $rec->sub_name }}</td>
            <td>{{$rec->sub_alais}}</td>
            <td>{{ $rec->sub_code }}</td>
            <td>{{$rec->semester_id}}</td>
			<td> <a href="subjectdelete/{{$rec->subjectid}}">Delete</a></td>
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