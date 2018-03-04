<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class semester extends Model
{




	
	
	protected $primaryKey = 'semesterid'; // or null

    //public $incrementing = false;
    //
    protected $fillable = [
        'semester_name','branch_id','created_by',
    ];

    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
        
    ];








    public function class()
    {
        return $this->hasMany(sclass::class);

    }
}
