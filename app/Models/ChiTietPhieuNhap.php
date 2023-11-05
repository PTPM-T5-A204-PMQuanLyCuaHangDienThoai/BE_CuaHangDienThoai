<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ChiTietPhieuNhap extends Model
{
    use HasFactory;

    protected $table = 'ChiTietPhieuNhap';
    protected $primaryKey = 'id';
    public $incrementing = true;

    public $timestamps = false;

    protected $fillable = [
        'id',
        'idPhieuNhap',
        'idSanPham',
        'SoLuong',
        'GiaNhap',
    ];
}
