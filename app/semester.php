<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class semester extends Model
{
    public function class()
    {
        return $this->hasMany(class::class);

    }
}
