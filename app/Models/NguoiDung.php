<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class NguoiDung extends Model
{
    use HasFactory;
    protected $table = 'NguoiDung';
    protected $primaryKey = 'id';
    public $incrementing = false;

    public $timestamps = false;

    protected $fillable = [
        'id',
        'name',
        'TenDangNhap',
        'MatKhau',
        'NgaySinh',
        'SDT',
        'DiaChi',
        'Email',
        'NgayTao',
        'NgayThayDoi',
        'HoatDong',
        'idChucVu',
        'GioiTinh',
        'Anh'
    ];
}
