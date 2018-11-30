<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class status extends Model
{
    protected $table= "m_status";
    protected $fillable = [
        'status'
    ];
}