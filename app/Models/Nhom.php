<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Nhom extends Model
{
    use HasFactory;
    protected $table = 'Nhom';
    protected $primaryKey = 'id';
    public $incrementing = false;

    public $timestamps = false;

    protected $fillable = ['id', 'name'];
    public function nhomNguoiDung()
    {
        return $this->hasMany(NhomNguoiDung::class, 'idNhom');
    }
}
