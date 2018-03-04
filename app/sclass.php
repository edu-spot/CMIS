<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class sclass extends Model
{







	protected $primaryKey = 'sclassid'; // or null

    //public $incrementing = false;
    //
    protected $fillable = [
        'sclass_name','created_by','semester_id',
    ];

    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
        
    ];


   








    public function stu_master()
    {
        return $this->hasMany(stu_master::class);

    }
}
