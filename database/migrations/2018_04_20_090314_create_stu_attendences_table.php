<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateStuAttendencesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('stu_attendences', function (Blueprint $table) {
            $table->increments('id');

            $table->integer('attcoll_id')->unsigned();
            $table->date('attdate');
            $table->boolean('status');
            $table->integer('timeslot_id')->unsigned();
            $table->integer('branch_id')->unsigned();
            $table->integer('semester_id')->unsigned();
            $table->integer('sclass_id')->unsigned();
            $table->integer('subject_id')->unsigned();
            $table->integer('stumaster_id')->unsigned();
            $table->integer('created_by')->unsigned();
            $table->integer('updated_by')->unsigned()->nullable();

            $table->timestamps();

            $table->foreign('attcoll_id')->references('id')->on('attcolls');
            $table->foreign('timeslot_id')->references('id')->on('timeslots');
            $table->foreign('branch_id')->references('branchid')->on('branches');
            $table->foreign('semester_id')->references('semesterid')->on('semesters');
            $table->foreign('sclass_id')->references('sclassid')->on('sclasses');
            $table->foreign('subject_id')->references('subjectid')->on('subjects');
            $table->foreign('stumaster_id')->references('stuid')->on('stu_masters');
            $table->foreign('created_by')->references('id')->on('users');
            $table->foreign('updated_by')->references('id')->on('users');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('stu_attendences');
    }
}
