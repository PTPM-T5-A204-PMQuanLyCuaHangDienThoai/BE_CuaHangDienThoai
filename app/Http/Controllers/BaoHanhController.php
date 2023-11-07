<?php

namespace App\Http\Controllers;

use App\Models\BaoHanh;
use App\Models\ChiTietPhieuXuat;
use App\Models\NguoiDung;
use Illuminate\Http\Request;

class BaoHanhController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        return BaoHanh::all();
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        $ChiTietPhieuXuat = ChiTietPhieuXuat::all()->select(
            "id as value",
            "id as label"
        )->get();

        $NhanVien = NguoiDung::all()->select(
            "id as value",
            "name as label"
        )->get();

        return response()->json([
            "ChiTietPhieuXuat" => $ChiTietPhieuXuat,
            "NhanVien" => $NhanVien,
        ]);
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $request->validate([
            'idChiTietPhieuXuat' => 'required',
            'LyDo' => 'required',
            'NgayBaoHanh' => 'required',
            'NgayTraHang' => 'required',
            'idNhanVien' => 'required|exists:NguoiDung,id',
            'idKhachHang' => 'required|exists:NguoiDung,id',
            'ChiPhi' => 'required',
            'TrangThai' => 'required',
            'idPhieuXuat' => 'required'
        ]);

        BaoHanh::create($request->all());
    }

    /**
     * Display the specified resource.
     */
    public function show($id)
    {
        return BaoHanh::findOrFail($id);
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(BaoHanh $baoHanh)
    {
        $ChiTietPhieuXuat = ChiTietPhieuXuat::all()->select(
            "id as value",
            "id as label"
        )->get();

        $NhanVien = NguoiDung::all()->select(
            "id as value",
            "name as label"
        )->get();

        return response()->json([
            "ChiTietPhieuXuat" => $ChiTietPhieuXuat,
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
            'idChiTietPhieuXuat' => 'required',
            'LyDo' => 'required',
            'NgayBaoHanh' => 'required',
            'NgayTraHang' => 'required',
            'idNhanVien' => 'required|exists:NguoiDung,id',
            'idKhachHang' => 'required|exists:NguoiDung,id',
            'ChiPhi' => 'required',
            'TrangThai' => 'required',
            'idPhieuXuat' => 'required'
        ]);
    
        $BaoHanh = BaoHanh::findOrFail($id);
        $BaoHanh->update($request->all());

        return response()->json($BaoHanh);
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy($id)
    {
        $BaoHanh = BaoHanh::findOrFail($id);
        $BaoHanh->delete();
    }
    public function getDataByidPhieuXuat($idPhieuXuat)
    {
        return BaoHanh::where('idPhieuXuat',$idPhieuXuat)->get();
    }
}
