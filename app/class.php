<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class class extends Model
{
    public function stu_master()
    {
        return $this->hasMany(stu_master::class);

    }
}
