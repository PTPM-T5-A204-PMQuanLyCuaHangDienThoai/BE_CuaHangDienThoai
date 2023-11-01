<?php

namespace App\Http\Controllers;

use App\Models\DanhMuc;
use App\Models\NhaCungCap;
use App\Models\SanPham;
use Illuminate\Http\Request;

class SanPhamController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        return SanPham::all();
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        $DanhMuc = DanhMuc::all()->select(
            "id as value",
            "name as label"
        )->get();

        $NhaCungCap = NhaCungCap::all()->select(
            "id as value",
            "name as label"
        )->get();

        return response()->json([
            "DanhMuc" => $DanhMuc,
            "NhaCungCap" => $NhaCungCap,
        ]);
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $request->validate([
            'id' => 'required',
            'name' => 'required',
            'SoLuongTon' => 'required',
            'GiaGoc' => 'required',
            'GiaKhuyenMai' => 'required',
            'MoTa' => 'required',
            'ManHinh' => 'required',
            'DoPhanGiai' => 'required',
            'TanSoQuet' => 'required',
            'CameraSau' => 'required',
            'CameraTruoc' => 'required',
            'CPU' => 'required',
            'GPU' => 'required',
            'RAM' => 'required',
            'ROM' => 'required',
            'Flash' => 'required',
            'Pin' => 'required',
            'Sim' => 'required',
            'HeDieuHanh' => 'required',
            'HoTroMang' => 'required',
            'KhangNuoc' => 'required',
            'ThoiDiemRaMat' => 'required',
            'TrangThai' => 'required',
            'ThoiGianBaoHanh' => 'required',
            'ThoiGianDoiTra' => 'required',
            'idDanhMuc' => 'required|exists:DanhMuc,id',
            'idNhaCungCap' => 'required|exists:NhaCungCap,id',
            'Anh' => 'required'
        ]);

        SanPham::create($request->all());
    }

    /**
     * Display the specified resource.
     */
    public function show($id)
    {
        return SanPham::findOrFail($id);
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(SanPham $sanPham)
    {
        $DanhMuc = DanhMuc::all()->select(
            "id as value",
            "name as label"
        )->get();

        $NhaCungCap = NhaCungCap::all()->select(
            "id as value",
            "name as label"
        )->get();

        return response()->json([
            "DanhMuc" => $DanhMuc,
            "NhaCungCap" => $NhaCungCap,
        ]);
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, $id)
    {
        $request->validate([
            'id' => 'required',
            'name' => 'required',
            'SoLuongTon' => 'required',
            'GiaGoc' => 'required',
            'GiaKhuyenMai' => 'required',
            'MoTa' => 'required',
            'ManHinh' => 'required',
            'DoPhanGiai' => 'required',
            'TanSoQuet' => 'required',
            'CameraSau' => 'required',
            'CameraTruoc' => 'required',
            'CPU' => 'required',
            'GPU' => 'required',
            'RAM' => 'required',
            'ROM' => 'required',
            'Flash' => 'required',
            'Pin' => 'required',
            'Sim' => 'required',
            'HeDieuHanh' => 'required',
            'HoTroMang' => 'required',
            'KhangNuoc' => 'required',
            'ThoiDiemRaMat' => 'required',
            'TrangThai' => 'required',
            'ThoiGianBaoHanh' => 'required',
            'ThoiGianDoiTra' => 'required',
            'idDanhMuc' => 'required|exists:DanhMuc,id',
            'idNhaCungCap' => 'required|exists:NhaCungCap,id',
            'Anh' => 'required'
        ]);
    
        $SanPham = SanPham::findOrFail($id);
        $SanPham->update($request->all());

        return response()->json($SanPham);
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy($id)
    {
        $SanPham = SanPham::findOrFail($id);
        $SanPham->delete();
    }
}
