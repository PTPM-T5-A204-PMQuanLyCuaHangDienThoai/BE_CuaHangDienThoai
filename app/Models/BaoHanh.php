<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class BaoHanh extends Model
{
    use HasFactory;
    protected $table = 'BaoHanh';
    protected $primaryKey = 'id';
    public $incrementing = true;

    public $timestamps = false;

    protected $fillable = [
        'id',
        'idChiTietPhieuXuat',
        'LyDo',
        'NgayBaoHanh',
        'NgayTraHang',
        'idNhanVien',
        'idKhachHang',
        'ChiPhi',
        'TrangThai',
        'idPhieuXuat'
    ];
}
