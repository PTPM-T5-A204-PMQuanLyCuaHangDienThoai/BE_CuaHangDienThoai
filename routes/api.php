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
use App\Http\Controllers\QuyenController;
use App\Http\Controllers\SanPhamController;
use App\Models\NguoiDung;

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

Route::apiResource('Quyen', QuyenController::class);

Route::apiResource('PhanQuyen', PhanQuyenController::class);

Route::apiResource('CuaHang', CuaHangController::class);

Route::apiResource('DanhMuc', DanhMucController::class);

Route::apiResource('NhaCungCap', NhaCungCapController::class);

Route::apiResource('SanPham', SanPhamController::class);

Route::apiResource('PhieuNhap', PhieuNhapController::class);

Route::apiResource('ChiTietPhieuNhap', ChiTietPhieuNhapController::class);

Route::apiResource('PhieuXuat', PhieuXuatController::class);

Route::apiResource('ChiTietPhieuXuat', ChiTietPhieuXuatController::class);

Route::apiResource('BinhLuan', BinhLuanController::class);

//Route::put('NguoiDung/{id}/ResetMatKhau', 'NguoiDungController@ResetMatKhau')->name('NguoiDung.ResetMatKhau');

Route::put('NguoiDung/{id}/resetMatKhau', [NguoiDungController::class, 'resetMatKhau'])->name('NguoiDung.resetMatKhau');

Route::get('NguoiDung/{TenDangNhap}/checkDuplicateTenDangNhap', [NguoiDungController::class, 'checkDuplicateTenDangNhap'])->name('NguoiDung.checkDuplicateTenDangNhap');

Route::get('NguoiDung/{SDT}/checkDuplicateSDT', [NguoiDungController::class, 'checkDuplicateSDT'])->name('NguoiDung.checkDuplicateSDT');

Route::get('NguoiDung/{Email}/checkDuplicateEmail', [NguoiDungController::class, 'checkDuplicateEmail'])->name('NguoiDung.checkDuplicateEmail');

Route::post('NguoiDung/checkLogin', [NguoiDungController::class, 'checkLogin'])->name('NguoiDung.checkLogin');

Route::get('DanhMuc/{SDT}/checkDuplicateSDT', [DanhMucController::class, 'checkDuplicateSDT'])->name('DanhMuc.checkDuplicateSDT');

Route::get('DanhMuc/{Email}/checkDuplicateEmail', [DanhMucController::class, 'checkDuplicateEmail'])->name('DanhMuc.checkDuplicateEmail');

Route::get('Quyen/{idNhom}/getDataIsNotAddByGroup', [QuyenController::class, 'getDataIsNotAddByGroup'])->name('Quyen.getDataIsNotAddByGroup');

Route::get('PhanQuyen/{idNhom}/getDataByidNhom', [PhanQuyenController::class, 'getDataByidNhom'])->name('PhanQuyen.getDataByidNhom');

Route::get('NguoiDung/{idNhom}/getDataIsNotAddByGroup', [NguoiDungController::class, 'getDataIsNotAddByGroup'])->name('NguoiDung.getDataIsNotAddByGroup');

Route::get('NhomNguoiDung/{idNhom}/getDataByidNhom', [NhomNguoiDungController::class, 'getDataByidNhom'])->name('NhomNguoiDung.getDataByidNhom');

Route::get('PhanQuyen/{idNguoiDung}/{idQuyen}/checkQuyen', [PhanQuyenController::class, 'checkQuyen'])->name('PhanQuyen.checkQuyen');

Route::get('NhaCungCap/{SDT}/checkDuplicateSDT', [NhaCungCapController::class, 'checkDuplicateSDT'])->name('NhaCungCap.checkDuplicateSDT');

Route::get('NhaCungCap/{Email}/checkDuplicateEmail', [NhaCungCapController::class, 'checkDuplicateEmail'])->name('NhaCungCap.checkDuplicateEmail');