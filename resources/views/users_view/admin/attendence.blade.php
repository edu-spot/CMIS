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
        <div class="col-md-12">
            <div class="panel panel-default">
                 <div class="panel-heading">Take Attendene</div>


                 <div class="panel-body">
                    <form class="form-horizontal" method="POST" action="{{ route('takeatt') }}">
                        {{ csrf_field() }}


                        
                         <div class="form-group{{ $errors->has('period') ? ' has-error' : '' }}">
                            <label for="period" class="col-md-4 control-label">Duration</label>
                       
                            <div class="col-md-6">
                             <select class="form-control" name="period">
                             
                             <option value="45">45 Minutes lectures/1.5 Hour Prac</option>
                             <option value="60">60 Minutes lectures/2 Hour Prac</option>
                             
                             </select>
                         </div>
                     </div>
                      


                        <div class="form-group">
                            <div class="col-md-6 col-md-offset-8">
                                <button type="submit" class="btn btn-primary">
                                    Create Timeslots 
                                </button>
                            </div>
                            (only creates 1 hour slots just need to add insert lines for 45 min slots)
                        </div>



<table class="table table-striped">
	<tr>
		<td>Number</td>
		<td>Time</td>
        <td>Type</td>
        <td>Duration</td>
		<!-- <td>Actions</td> -->
	</tr>
@php
    $i=1
    @endphp

	@foreach ($records as $rec)

		<tr>
			<td> @php echo $i @endphp </td>
			<td>{{ $rec->time }}</td>
            <td>{{$rec->timetype}}</td>
            <td>{{$rec->duration}}</td>
			
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