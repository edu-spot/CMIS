<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class subject extends Model
{
    



   public function semester()
    {
        return $this->belongsTO(semester::class);

    }
}
