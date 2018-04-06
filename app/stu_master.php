<?php

namespace App;

use Illuminate\Notifications\Notifiable;
use Illuminate\Database\Eloquent\Model;

class stu_master extends Model
{

use Notifiable;

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */

    protected $primaryKey = 'stuid';



    protected $fillable = [
        'user_id', 'created_by',
    ];

    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
       
    ];
    public function stu_info()
    {
        return $this->hasOne(stu_info::class);

    }



  //  public function user()
  //  {
  //  	return $this->hasOne(user::class);

 //   }
}
