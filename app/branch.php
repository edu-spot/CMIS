<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class branch extends Model
{
    //
    protected $fillable = [
        'branch_name','created_by',
    ];

    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
        
    ];


    public function semester()
    {
        return $this->hasMany(semester::class);

    }



}
