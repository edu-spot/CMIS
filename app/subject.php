<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class subject extends Model
{
    




	protected $primaryKey = 'subjectid'; // or null

    //public $incrementing = false;
    //
    protected $fillable = [
       'sub_name','sub_alais','sub_code','created_by','semester_id',
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
        return $this->belongsTO(semester::class);

    }
}
