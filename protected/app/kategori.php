<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class kategori extends Model
{
    protected $table = "m_kategori";
    protected $fillable = [
        'nama'
    ];
}
