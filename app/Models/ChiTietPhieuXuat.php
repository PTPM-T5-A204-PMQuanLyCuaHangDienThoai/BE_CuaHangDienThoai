<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ChiTietPhieuXuat extends Model
{
    use HasFactory;

    protected $table = 'ChiTietPhieuXuat';
    protected $primaryKey = 'id';
    public $incrementing = true;

    public $timestamps = false;

    protected $fillable = [
        'id',
        'idPhieuXuat',
        'idSanPham',
        'SoLuong',
        'GiaNhap',
    ];
}
