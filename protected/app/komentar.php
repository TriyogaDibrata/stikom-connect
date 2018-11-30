<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class komentar extends Model
{
    protected $table= "t_komentar";

    protected $fillable = 
    [
        'user_id',
        'laporan_id',
        'komentar',
    ];
}
