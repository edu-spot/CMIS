<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateMarksMastersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('marks_masters', function (Blueprint $table) {
            $table->increments('marksmasterid');
            $table->integer('subject_id')->unsigned();   
            $table->integer('markscategory_id')->unsigned();
            $table->integer('stu_id')->unsigned();
            $table->integer('obtained_marks');
            $table->integer('created_by')->unsigned();
            $table->integer('updated_by')->unsigned()->nullable();
            $table->timestamps();

            // $table->foreign('branch_id')->references('branchid')->on('branches');
            $table->foreign('subject_id')->references('subjectid')->on('subjects');
            $table->foreign('markscategory_id')->references('markscategoryid')->on('marks_categories');
            $table->foreign('stu_id')->references('stuid')->on('stu_masters');
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
        Schema::dropIfExists('marks_masters');
    }
}
