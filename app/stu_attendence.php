<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class stu_attendence extends Model
{

    protected $primaryKey = 'id'; // or null

    public $incrementing = false;
    //
    protected $fillable = [
        'attdate','timeslot_id','branch_id','semester_id','sclass_id','stumaster_id','subject_id','status','created_by','duration',
    ];

    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
        
    ];


    // public function semester()
    // {
    //     return $this->hasMany(semester::class);

    // }
}
