<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Quyen extends Model
{
    use HasFactory;
    protected $table = 'Quyen';
    protected $primaryKey = 'id';
    public $incrementing = false;

    public $timestamps = false;

    protected $fillable = ['id', 'name'];
    public function phanQuyen()
    {
        return $this->hasMany(PhanQuyen::class, 'idQuyen');
    }
}
