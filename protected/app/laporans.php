<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class laporans extends Model
{
    protected $table = "t_laporans";
    protected $fillable = [
        'kategori_id',
        'user_id',
        'topik',
        'uraian',
        'status_id',
        'hidden'
    ];
}
