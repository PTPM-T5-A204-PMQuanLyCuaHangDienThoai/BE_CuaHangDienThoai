<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class SanPham extends Model
{
    use HasFactory;

    protected $table = 'SanPham';
    protected $primaryKey = 'id';
    public $incrementing = false;

    public $timestamps = false;

    protected $fillable = [
        'id',
        'name',
        'SoLuongTon',
        'GiaGoc',
        'GiaKhuyenMai',
        'MoTa',
        'ManHinh',
        'DoPhanGiai',
        'TanSoQuet',
        'CameraSau',
        'CameraTruoc',
        'CPU',
        'GPU',
        'RAM',
        'ROM',
        'Flash',
        'Pin',
        'Sim',
        'HeDieuHanh',
        'HoTroMang',
        'KhangNuoc',
        'ThoiDiemRaMat',
        'TrangThai',
        'ThoiGianBaoHanh',
        'ThoiGianDoiTra',
        'idDanhMuc',
        'idNhaCungCap',
        'Anh'
    ];
}
