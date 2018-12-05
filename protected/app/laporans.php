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

    public function belongsToFile()
    {
        return $this->belongsTo('App\file', 'id', 'laporan_id');
    }

    public function hasStatus()
    {
        return $this->hasMany('App\status', 'id', 'status');
    }

    public function hasKategori()
    {
        return $this->hasMany('App\kategori', 'id', 'nama');
    }

    public function files()
    {
        return $this->hasMany('App\file', 'laporan_id', 'id')
                    ->select(['id', 'laporan_id', 'file']); 
    }

    public function file()
    {
        return $this->hasMany('App\file', 'laporan_id', 'id')
                    ->select(['id', 'laporan_id', 'file'])
                    ->limit(1);
    }

    public function hasUser()
    {
        return $this->hasMany('App\User', 'id', 'user_id')
                    ->select(['id', 'name']);
    }
}
