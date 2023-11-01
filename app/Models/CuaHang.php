<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class CuaHang extends Model
{
    use HasFactory;

    protected $table = 'CuaHang';
    protected $primaryKey = 'id';
    public $incrementing = false;

    public $timestamps = false;

    protected $fillable = [
        'id',
        'name',
        'SDT',
        'DiaChi',
        'Email',
        'MoTa'
    ];
}
