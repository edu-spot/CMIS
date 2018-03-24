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
                 <div class="panel-heading">Take Attendene</div>
                 
                 <div class="form-control">

                    <label for="branch_id" class="col-md-4 control-label">Branch</label>
                    <select class="branch" id="branch_id">
                     <option value="0" disabled="true" selected="true">-Select-</option>
                     @foreach($records as $records)
                         <option value="{{$records->branchid}}">{{$records->branch_name}}</option>
                     @endforeach

                    </select>




                   




                
                 </div>
                        
                    
            </div>
       	 </div>
    </div>
</div>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<script type="text/javascript">
    $(document).ready(function(){
        $(document).on('change','.branch',function(){
            // console.log("change ho gaya");

            var branch_id = $(this).val();
            // console.log(branch_id);

            $.ajax({

                type:'get',
                url:'{{url("loaditems")}}',
                data:{'id':branch_id},
                success:function(data){
                    console.log(data);

                },

                error:function(){
                    console.log("error");


                }


            });


        });


    });

</script>

@endsection