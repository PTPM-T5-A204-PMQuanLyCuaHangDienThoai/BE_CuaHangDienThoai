<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class PhanQuyen extends Model
{
    use HasFactory;

    protected $table = 'PhanQuyen';
    protected $primaryKey = 'id';
    public $incrementing = true;

    public $timestamps = false;

    protected $fillable = ['id', 'idQuyen','idNhom'];
    public function quyen()
    {
        return $this->belongsTo(Quyen::class, 'idQuyen', 'id');
    }

    public function nhomNguoiDung()
    {
        return $this->belongsTo(NhomNguoiDung::class, 'idNhom', 'id');
    }
}
