<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class marks_master extends Model
{
   protected $primaryKey = 'marksmasterid'; // or null

    //public $incrementing = false;
    //
    protected $fillable = [
       'subject_id','markscategory_id','stu_id','obtained_marks_ut1','obtained_marks_ut2','created_by',
    ];

    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
        
    ];

}
