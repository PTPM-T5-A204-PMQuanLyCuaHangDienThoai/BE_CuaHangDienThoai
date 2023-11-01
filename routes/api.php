<?php

use App\Http\Controllers\BinhLuanController;
use App\Http\Controllers\ChiTietPhieuNhapController;
use App\Http\Controllers\ChiTietPhieuXuatController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\ChucVuController;
use App\Http\Controllers\CuaHangController;
use App\Http\Controllers\DanhMucController;
use App\Http\Controllers\NguoiDungController;
use App\Http\Controllers\NhaCungCapController;
use App\Http\Controllers\NhomController;
use App\Http\Controllers\NhomNguoiDungController;
use App\Http\Controllers\PhanQuyenController;
use App\Http\Controllers\PhieuNhapController;
use App\Http\Controllers\PhieuXuatController;
use App\Http\Controllers\SanPhamController;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "api" middleware group. Make something great!
|
*/

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});

Route::apiResource('ChucVu', ChucVuController::class);

Route::apiResource('NguoiDung', NguoiDungController::class);

Route::apiResource('Nhom', NhomController::class);

Route::apiResource('NhomNguoiDung', NhomNguoiDungController::class);

Route::apiResource('Quyen', NhomNguoiDungController::class);

Route::apiResource('PhanQuyen', PhanQuyenController::class);

Route::apiResource('Cuahang', CuaHangController::class);

Route::apiResource('DanhMuc', DanhMucController::class);

Route::apiResource('NhaCungCap', NhaCungCapController::class);

Route::apiResource('SanPham', SanPhamController::class);

Route::apiResource('PhieuNhap', PhieuNhapController::class);

Route::apiResource('ChiTietPhieuNhap', ChiTietPhieuNhapController::class);

Route::apiResource('PhieuXuat', PhieuXuatController::class);

Route::apiResource('ChiTietPhieuXuat', ChiTietPhieuXuatController::class);

Route::apiResource('BinhLuan', BinhLuanController::class);