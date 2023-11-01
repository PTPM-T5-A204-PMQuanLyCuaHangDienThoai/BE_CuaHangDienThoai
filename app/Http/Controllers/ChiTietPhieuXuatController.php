<?php

namespace App\Http\Controllers;

use App\Models\ChiTietPhieuXuat;
use App\Models\SanPham;
use App\Models\PhieuXuat;
use Illuminate\Http\Request;

class ChiTietPhieuXuatController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        return ChiTietPhieuXuat::all();
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        $PhieuXuat = PhieuXuat::all()->select(
            "id as value",
            "id as label"
        )->get();

        $SanPham = SanPham::all()->select(
            "id as value",
            "name as label"
        )->get();

        return response()->json([
            "PhieuXuat" => $PhieuXuat,
            "SanPham" => $SanPham,
        ]);
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $request->validate([
            'id' => 'required',
            'SoLuong' => 'required',
            'GiaNhap' => 'required',
            'idSanPham' => 'required|exists:SanPham,id',
            'idPhieuXuat' => 'required|exists:PhieuXuat,id'
        ]);

        ChiTietPhieuXuat::create($request->all());
    }

    /**
     * Display the specified resource.
     */
    public function show($id)
    {
        return ChiTietPhieuXuat::findOrFail($id);
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit($id)
    {
        $PhieuXuat = PhieuXuat::all()->select(
            "id as value",
            "id as label"
        )->get();

        $SanPham = SanPham::all()->select(
            "id as value",
            "name as label"
        )->get();

        return response()->json([
            "PhieuXuat" => $PhieuXuat,
            "SanPham" => $SanPham,
        ]);
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, $id)
    {
        $request->validate([
            'id' => 'required',
            'SoLuong' => 'required',
            'GiaNhap' => 'required',
            'idSanPham' => 'required|exists:SanPham,id',
            'idPhieuXuat' => 'required|exists:PhieuXuat,id'
        ]);
    
        $ChiTietPhieuXuat = ChiTietPhieuXuat::findOrFail($id);
        $ChiTietPhieuXuat->update($request->all());

        return response()->json($ChiTietPhieuXuat);
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy($id)
    {
        $ChiTietPhieuXuat = ChiTietPhieuXuat::findOrFail($id);
        $ChiTietPhieuXuat->delete();
    }
}
