<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class AI extends Model
{
    use HasFactory;
    protected $table = 'AI';
    protected $primaryKey = 'id';
    public $incrementing = true;

    public $timestamps = false;

    protected $fillable = [
        'id',
        'HieuSuat',
        'Camera',
        'Pin',
        'TanSo',
        'idSanPham ',
    ];
}
