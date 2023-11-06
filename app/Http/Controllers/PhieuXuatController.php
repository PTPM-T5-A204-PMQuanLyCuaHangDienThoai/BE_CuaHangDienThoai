<?php

namespace App\Http\Controllers;

use App\Models\PhieuXuat;
use App\Models\NguoiDung;
use Illuminate\Http\Request;

class PhieuXuatController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        return PhieuXuat::all();
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        $KhachHang = NguoiDung::all()->select(
            "id as value",
            "name as label"
        )->get();

        $NhanVien = NguoiDung::all()->select(
            "id as value",
            "name as label"
        )->get();

        return response()->json([
            "KhachHang" => $KhachHang,
            "NhanVien" => $NhanVien,
        ]);
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $request->validate([
            'id' => 'required',
            'NgayXuat' => 'required',
            'TongSoLuong' => 'required',
            'TongTien' => 'required',
            'TinhTrang' => 'required',
            'TrangThai' => 'required',
            'idKhachHang' => 'required|exists:NguoiDung,id',
            'idNhanVien' => 'required|exists:NguoiDung,id'
        ]);

        PhieuXuat::create($request->all());
    }

    /**
     * Display the specified resource.
     */
    public function show($id)
    {
        return PhieuXuat::findOrFail($id);
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(PhieuXuat $phieuXuat)
    {
        $KhachHang = NguoiDung::all()->select(
            "id as value",
            "name as label"
        )->get();

        $NhanVien = NguoiDung::all()->select(
            "id as value",
            "name as label"
        )->get();

        return response()->json([
            "KhachHang" => $KhachHang,
            "NhanVien" => $NhanVien,
        ]);
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, $id)
    {
        $request->validate([
            'id' => 'required',
            'NgayXuat' => 'required',
            'TongSoLuong' => 'required',
            'TongTien' => 'required',
            'TinhTrang' => 'required',
            'TrangThai' => 'required',
            'idKhachHang' => 'required|exists:NguoiDung,id',
            'idNhanVien' => 'required|exists:NguoiDung,id'
        ]);
    
        $PhieuXuat = PhieuXuat::findOrFail($id);
        $PhieuXuat->update($request->all());

        return response()->json($PhieuXuat);
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy($id)
    {
        $PhieuXuat = PhieuXuat::findOrFail($id);
        $PhieuXuat->delete();
    }
    public function getDataTheoTrangThai($TrangThai)
    {
        return PhieuXuat::where('TrangThai', $TrangThai)->get();
    }
    public function getDataTheoTinhTrang($TinhTrang)
    {
        return PhieuXuat::where('TinhTrang', $TinhTrang)->get();
    }
    public function getDataTheoTinhTrang_TrangThai($TinhTrang, $TrangThai)
    {
        return PhieuXuat::where('TinhTrang', $TinhTrang)->where('TrangThai',$TrangThai)->get();
    }
}
