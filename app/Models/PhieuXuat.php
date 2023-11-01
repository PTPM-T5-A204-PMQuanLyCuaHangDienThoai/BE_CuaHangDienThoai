<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class PhieuXuat extends Model
{
    use HasFactory;

    protected $table = 'PhieuXuat';
    protected $primaryKey = 'id';
    public $incrementing = true;

    public $timestamps = false;

    protected $fillable = [
        'id',
        'NgayXuat',
        'TongSoLuong',
        'TongTien',
        'TinhTrang',
        'TrangThai',
        'idKhachHang',
        'idNhanVien'
    ];
}
