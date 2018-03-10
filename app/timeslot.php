<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class timeslot extends Model
{
    protected $primaryKey = 'id'; // or null

    public $incrementing = false;
    //
    protected $fillable = [
        'timetype','time','created_by',
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
