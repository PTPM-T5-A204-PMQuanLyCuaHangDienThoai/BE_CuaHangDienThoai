<?php

namespace App\Http\Controllers;

use App\Models\PhieuNhap;
use App\Models\NhaCungCap;
use App\Models\NguoiDung;
use Illuminate\Http\Request;

class PhieuNhapController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        return PhieuNhap::all();
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        $NguoiDung = NguoiDung::all()->select(
            "id as value",
            "name as label"
        )->get();

        $NhaCungCap = NhaCungCap::all()->select(
            "id as value",
            "name as label"
        )->get();

        return response()->json([
            "NguoiDung" => $NguoiDung,
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
            'NgayNhap' => 'required',
            'TongSoLuong' => 'required',
            'TongTien' => 'required',
            'TrangThai' => 'required',
            'idNhaCungCap' => 'required|exists:NhaCungCap,id',
            'idNhanVien' => 'required|exists:NguoiDung,id'
        ]);

        PhieuNhap::create($request->all());
    }

    /**
     * Display the specified resource.
     */
    public function show($id)
    {
        return PhieuNhap::findOrFail($id);
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(PhieuNhap $phieuNhap)
    {
        $NguoiDung = NguoiDung::all()->select(
            "id as value",
            "name as label"
        )->get();

        $NhaCungCap = NhaCungCap::all()->select(
            "id as value",
            "name as label"
        )->get();

        return response()->json([
            "NguoiDung" => $NguoiDung,
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
            'NgayNhap' => 'required',
            'TongSoLuong' => 'required',
            'TongTien' => 'required',
            'TrangThai' => 'required',
            'idNhaCungCap' => 'required|exists:NhaCungCap,id',
            'idNhanVien' => 'required|exists:NguoiDung,id'
        ]);
    
        $PhieuNhap = PhieuNhap::findOrFail($id);
        $PhieuNhap->update($request->all());

        return response()->json($PhieuNhap);
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy($id)
    {
        $PhieuNhap = PhieuNhap::findOrFail($id);
        $PhieuNhap->delete();
    }
    public function getDataTheoTrangThai($TrangThai)
    {
        return PhieuNhap::where('TrangThai', $TrangThai)->get();
    }
}
