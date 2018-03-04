<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class emp_info extends Model
{
    protected $primaryKey = 'empinfosid'; // or null

    //public $incrementing = false;
    //
    protected $fillable = [
        'emp_unique_id','emp_title','emp_first_name','emp_middle_name','emp_last_name','emp_name_alias','emp_gender','emp_dob','emp_email_id','emp_mobile_no','emp_bloodgroup','emp_birthplace','emp_religion','emp_maritalstatus','emp_joining_date','emp_languages','emp_bankaccount_no','emp_qualification','emp_specialization','emp_experience','empmasterid','created_by',
    ];

    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
        
    ];
}
