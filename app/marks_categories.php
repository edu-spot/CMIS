<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class marks_categories extends Model
{
     protected $primaryKey = 'markscategoryid'; // or null

    //public $incrementing = false;
    //
    protected $fillable = [
       'subject_id','marks_category_name','marks_category_alias','min_marks','max_marks','created_by',
    ];

    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
        
    ];

}
