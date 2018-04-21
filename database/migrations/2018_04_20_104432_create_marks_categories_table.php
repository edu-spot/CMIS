<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateMarksCategoriesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('marks_categories', function (Blueprint $table) {
            $table->increments('markscategoryid');
            $table->integer('subject_id')->unsigned();
            $table->string('marks_category_name');
            $table->string('marks_category_alias');
            $table->integer('min_marks');
            $table->integer('max_marks');
            $table->integer('created_by')->unsigned();
            $table->integer('updated_by')->unsigned()->nullable();
            $table->timestamps();

            $table->foreign('subject_id')->references('subjectid')->on('subjects');
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
        Schema::dropIfExists('marks_categories');
    }
}
