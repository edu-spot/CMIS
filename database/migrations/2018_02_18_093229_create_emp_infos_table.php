<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateEmpInfosTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('emp_infos', function (Blueprint $table) {
            $table->increments('empinfosid');
            $table->string('emp_unique_id');
            $table->string('emp_title');
            $table->string('emp_first_name');
            $table->string('emp_middle_name');
            $table->string('emp_last_name');
            $table->string('emp_name_alias');
            $table->string('emp_gender');
            $table->date('emp_dob');
            $table->string('emp_email_id')->unique();
            $table->biginteger('emp_mobile_no')->unique();
            $table->string('emp_bloodgroup');
            $table->string('emp_birthplace');
            $table->string('emp_religion');
            $table->string('emp_maritalstatus');
            $table->date('emp_joining_date');
            //$table->longblob('emp_photo');
            $table->string('emp_languages');
            $table->string('emp_bankaccount_no');
            $table->string('emp_qualification');
            $table->string('emp_specialization');
            $table->string('emp_experience');
            $table->integer('empmasterid')->unsigned();
             $table->integer('created_by')->unsigned();
            $table->integer('updated_by')->unsigned()->nullable();
            $table->timestamps();


            $table->foreign('created_by')->references('id')->on('users');
            $table->foreign('updated_by')->references('id')->on('users');
            $table->foreign('empmasterid')->references('empid')->on('emp_masters');

        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('emp_infos');
    }
}
