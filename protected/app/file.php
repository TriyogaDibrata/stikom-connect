<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class file extends Model
{
    protected $table = "t_files";
    
    protected $fillable = [
        'laporan_id',
        'file'
    ];
}
