<?php

use App\Http\Controllers\AIController;
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
use App\Http\Controllers\BaoHanhController;
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

Route::apiResource('BaoHanh', BaoHanhController::class);

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

Route::get('PhieuNhap/{TrangThai}/getDataTheoTrangThai', [PhieuNhapController::class, 'getDataTheoTrangThai'])->name('PhieuNhap.getDataTheoTrangThai');

Route::get('SanPham/{TrangThai}/getDataTheoTrangThai', [SanPhamController::class, 'getDataTheoTrangThai'])->name('SanPham.getDataTheoTrangThai');

Route::get('SanPham/{TrangThai}/{data}/findDataTheoTrangThai', [SanPhamController::class, 'findDataTheoTrangThai'])->name('SanPham.findDataTheoTrangThai');

Route::get('ChiTietPhieuNhap/{idSanPham}/{idPhieuNhap}/findDataByCTPhieuNhap_SanPham', [ChiTietPhieuNhapController::class, 'findDataByCTPhieuNhap_SanPham'])->name('ChiTietPhieuNhap.findDataByCTPhieuNhap_SanPham');

Route::get('ChiTietPhieuNhap/{idPhieuNhap}/findDataByidPhieuNhap', [ChiTietPhieuNhapController::class, 'findDataByidPhieuNhap'])->name('ChiTietPhieuNhap.findDataByidPhieuNhap');

Route::get('PhieuXuat/{TrangThai}/getDataTheoTrangThai', [PhieuXuatController::class, 'getDataTheoTrangThai'])->name('PhieuXuat.getDataTheoTrangThai');

Route::get('PhieuXuat/{TinhTrang}/getDataTheoTinhTrang', [PhieuXuatController::class, 'getDataTheoTinhTrang'])->name('PhieuXuat.getDataTheoTinhTrang');

Route::get('PhieuXuat/{TinhTrang}/{TrangThai}/getDataTheoTinhTrang_TrangThai', [PhieuXuatController::class, 'getDataTheoTinhTrang_TrangThai'])->name('PhieuXuat.getDataTheoTinhTrang_TrangThai');

Route::get('ChiTietPhieuXuat/{idSanPham}/{idPhieuXuat}/findDataByCTPhieuXuat_SanPham', [ChiTietPhieuXuatController::class, 'findDataByCTPhieuXuat_SanPham'])->name('ChiTietPhieuXuat.findDataByCTPhieuXuat_SanPham');

Route::get('ChiTietPhieuXuat/{idPhieuXuat}/findDataByidPhieuXuat', [ChiTietPhieuXuatController::class, 'findDataByidPhieuXuat'])->name('ChiTietPhieuXuat.findDataByidPhieuNhap');

Route::get('BaoHanh/{idPhieuXuat}/getDataByidPhieuXuat', [BaoHanhController::class, 'getDataByidPhieuXuat'])->name('BaoHanh.getDataByidPhieuXuat');
Route::get('PhieuXuat/{ngayBD}/{ngayKT}/thongketheongay',[PhieuXuatController::class,'get_PhieuxuattheoDate'])->name('thongketheongay');
Route::get('/NguoiDung/nhanvien/getdanhsach', [NguoiDungController::class, 'getNhanVien']);

Route::get('PhieuXuat/{id}/thongketheonhanvien',[PhieuXuatController::class,'get_PhieuxuattheoNhanVien'])->name('thongketheonhanvien');

Route::get('AI/get1000Data',[AIController::class,'get1000Data']);

Route::get('AI/getHieuSuat',[AIController::class,'getHieuSuat']);

Route::get('AI/getCamera',[AIController::class,'getCamera']);

Route::get('AI/getPin',[AIController::class,'getPin']);

Route::get('AI/getTanSo',[AIController::class,'getTanSo']);