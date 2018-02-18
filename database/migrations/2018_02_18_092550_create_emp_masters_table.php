<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateEmpMastersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('emp_masters', function (Blueprint $table) {
            $table->increments('empid');
            $table->integer('user_id')->unsigned();
            $table->integer('created_by')->unsigned();
            $table->tinyInteger('is_status')->default('0');
            $table->integer('updated_by')->unsigned()->nullable();
            $table->timestamps();
        });
         Schema::table('emp_masters', function($table) {
       $table->foreign('user_id')->references('id')->on('users');
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
        Schema::dropIfExists('emp_masters');
    }
}
