<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateStuMastersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('stu_masters', function (Blueprint $table) {
            $table->increments('stuid');
            $table->integer('user_id')->unsigned();
            $table->integer('created_by')->unsigned();
            $table->tinyInteger('is_status')->default('0');
            $table->integer('updated_by')->unsigned()->nullable();
            $table->timestamps();
        });
         Schema::table('stu_masters', function($table) {
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
        Schema::dropIfExists('stu_masters');
    }
}
