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
            $table->increments('marks_master_id');
            // $table->integer('branchid')->unsigned();
            // $table->integer('subject_id')->unsigned();   // subject_table
            // $table->integer('marks_category_id')->unsigned();
            // $table->integer('stu_id')->unsigned();
            // $table->integer('obtained_marks');
            // $table->integer('created_by')->unsigned();
            // $table->integer('updated_by')->unsigned()->nullable();
            // $table->timestamps();

            // $table->foreign('subject_id')->references('branchid')->on('branches');
            // $table->foreign('subject_id')->references('subjectid')->on('subjects');
            // $table->foreign('marks_category_id')->references('markscategoryid')->on('marks_categories');
            // $table->foreign('stu_id')->references('stuid')->on('stu_master');
            // $table->foreign('created_by')->references('id')->on('users');
            // $table->foreign('updated_by')->references('id')->on('users');
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
