<?php

namespace App;

use Illuminate\Notifications\Notifiable;
use Illuminate\Database\Eloquent\Model;

class stu_info extends Model
{
    use Notifiable;

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */

    protected $primaryKey = 'stuinfoid';

    protected $fillable = [
        'user_id', 'created_by','stu_first_name','stu_middle_name','stu_last_name','stu_mother_name','stu_gender','stu_dob','stu_email_id','stu_mobile_no','stu_bloodgroup','stu_birthplace','stu_religion','stu_languages','stumasterid',
    ];

    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
       
    ];


    
}
