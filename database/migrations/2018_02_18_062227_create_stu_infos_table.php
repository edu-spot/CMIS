<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateStuInfosTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('stu_infos', function (Blueprint $table) {
            $table->increments('stuinfoid');
            $table->string('stu_unique_id')->unique();
            $table->string('stu_title');
            $table->string('stu_first_name');
            $table->string('stu_middle_name');
            $table->string('stu_last_name');
            $table->string('stu_mother_name');
            $table->string('stu_gender');
            $table->date('stu_dob');
            $table->string('stu_email_id')->unique();
            $table->biginteger('stu_mobile_no')->unique();
            $table->string('stu_bloodgroup');
            $table->string('stu_birthplace');
            $table->string('stu_religion');
            $table->date('stu_admission_date');
            // $table->longblob('stu_photo');longblob is not supported in laravel need to check for new method
            $table->string('stu_languages');
            $table->integer('stumasterid')->unsigned();
            $table->timestamps();

            $table->foreign('stumasterid')->references('stuid')->on('stu_masters');
        });

    //     Schema::table('stu_infos', function($table) {
    //    $table->foreign('stu_master_id')->references('stuid')->on('stu_masters');

    //    });
     }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('stu_infos');
    }
}
