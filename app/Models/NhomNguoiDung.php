<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class NhomNguoiDung extends Model
{
    use HasFactory;
    protected $table = 'NhomNguoiDung';
    protected $primaryKey = 'id';
    public $incrementing = true;

    public $timestamps = false;

    protected $fillable = ['id', 'idNguoiDung','idNhom'];
}
