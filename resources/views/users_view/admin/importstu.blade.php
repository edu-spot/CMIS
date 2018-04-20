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
				<div class="panel-heading">View Attendence</div>
           
            <!-- /.box-header -->
            <!-- form start -->
            <form role="form" action="{{ asset('importstu') }}" enctype="multipart/form-data" method="POST">
              {{ csrf_field() }}
              {{ method_field('POST') }}
              <div class="box-body">
                <div class="form-group">
                  <label for="exampleInputFile">File input</label>
                  <input type="file" name="import_file" />
                  <p class="help-block">Upload Student-data file</p>
                </div>
              </div>
              <!-- /.box-body -->

              <div class="box-footer">
                <button type="submit" class="btn btn-primary">Import</button>
              </div>
            </form>
          </div>
        </div>
      </div>






@endsection