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

                   <div class="form-group{{ $errors->has('theory') ? ' has-error' : '' }}">
                    <label for="theory" class="col-md-4 control-label">Theory</label>

                    <div class="form-check">
                      <input class="form-check-input" type="radio" name="theory" id="exampleRadios1" value="1" onclick="document.getElementById('theorymin').disabled = false; document.getElementById('theorymax').disabled = false;" checked>
                      <label class="form-check-label" for="exampleRadios1">
                          Yes
                      </label>
                                <!-- </div>
                                    <div class="form-check"> -->
                                        <input class="form-check-input" type="radio" name="theory" id="exampleRadios2" value="0"  onclick="document.getElementById('theorymin').disabled = true; document.getElementById('theorymax').disabled = true;">
                                        <label class="form-check-label" for="exampleRadios2">
                                            No
                                        </label>

                                    </div>
                                </div>  






                                <div class="form-group{{ $errors->has('theorymin') ? ' has-error' : '' }}">
                                    <label for="theorymin" class="col-md-4 control-label">Theory Min Marks</label>

                                    <div class="col-md-6">
                                        <input id="theorymin" type="text" class="form-control"  name="theorymin" value="{{ old('theorymin') }}" required autofocus>

                                        @if ($errors->has('theorymin'))
                                        <span class="help-block">
                                            <strong>{{ $errors->first('theorymin') }}</strong>
                                        </span>
                                        @endif
                                    </div>
                                </div>


                                <div class="form-group{{ $errors->has('theorymax') ? ' has-error' : '' }}">
                                    <label for="theorymax" class="col-md-4 control-label">Theory Max Marks</label>

                                    <div class="col-md-6">
                                        <input id="theorymax" type="text" class="form-control"  name="theorymax" value="{{ old('theorymax') }}" required autofocus>

                                        @if ($errors->has('theorymax'))
                                        <span class="help-block">
                                            <strong>{{ $errors->first('theorymax') }}</strong>
                                        </span>
                                        @endif
                                    </div>
                                </div>










                                <div class="form-group{{ $errors->has('Pactical') ? ' has-error' : '' }}">
                                    <label for="Pactical" class="col-md-4 control-label">Pactical</label>

                                    <div class="form-check">
                                      <input class="form-check-input" type="radio" name="Pactical" id="exampleRadios1" value="1" onclick="document.getElementById('Practicalmin').disabled = false; document.getElementById('Practicalmax').disabled = false;">
                                      <label class="form-check-label" for="exampleRadios1">
                                          Yes
                                      </label>
                                <!-- </div>
                                    <div class="form-check"> -->
                                        <input class="form-check-input" type="radio" name="Pactical" id="exampleRadios2" value="0" checked onclick="document.getElementById('Practicalmin').disabled = true; document.getElementById('Practicalmax').disabled = true;">
                                        <label class="form-check-label" for="exampleRadios2">
                                            No
                                        </label>

                                    </div>
                                </div>  



                                <div class="form-group{{ $errors->has('Practicalmin') ? ' has-error' : '' }}">
                                    <label for="Practicalmin" class="col-md-4 control-label">Practical Min Marks</label>

                                    <div class="col-md-6">
                                        <input id="Practicalmin" type="text" class="form-control" disabled="tru" name="Practicalmin" value="{{ old('Practicalmin') }}" required autofocus>

                                        @if ($errors->has('Practicalmin'))
                                        <span class="help-block">
                                            <strong>{{ $errors->first('Practicalmin') }}</strong>
                                        </span>
                                        @endif
                                    </div>
                                </div>


                                <div class="form-group{{ $errors->has('Practicalmax') ? ' has-error' : '' }}">
                                    <label for="Practicalmax" class="col-md-4 control-label">practical Max Marks</label>

                                    <div class="col-md-6">
                                        <input id="Practicalmax" type="text" class="form-control" disabled="tru" name="Practicalmax" value="{{ old('Practicalmax') }}" required autofocus>

                                        @if ($errors->has('Practicalmax'))
                                        <span class="help-block">
                                            <strong>{{ $errors->first('Practicalmax') }}</strong>
                                        </span>
                                        @endif
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

         <script src="http://code.jquery.com/jquery-3.3.1.min.js" integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8=" crossorigin="anonymous">
         </script>








        @endsection