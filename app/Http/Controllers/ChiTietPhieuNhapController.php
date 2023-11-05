<?php

namespace App\Http\Controllers;

use App\Models\ChiTietPhieuNhap;
use App\Models\PhieuNhap;
use App\Models\SanPham;
use Illuminate\Http\Request;

class ChiTietPhieuNhapController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        return ChiTietPhieuNhap::all();
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        $PhieuNhap = PhieuNhap::all()->select(
            "id as value",
            "id as label"
        )->get();

        $SanPham = SanPham::all()->select(
            "id as value",
            "name as label"
        )->get();

        return response()->json([
            "PhieuNhap" => $PhieuNhap,
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
            'idPhieuNhap' => 'required|exists:PhieuNhap,id'
        ]);

        ChiTietPhieuNhap::create($request->all());
    }

    /**
     * Display the specified resource.
     */
    public function show($id)
    {
        return ChiTietPhieuNhap::findOrFail($id);
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(ChiTietPhieuNhap $ChiTietPhieuNhap)
    {
        $PhieuNhap = PhieuNhap::all()->select(
            "id as value",
            "name as label"
        )->get();

        $SanPham = SanPham::all()->select(
            "id as value",
            "name as label"
        )->get();

        return response()->json([
            "PhieuNhap" => $PhieuNhap,
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
            'idPhieuNhap' => 'required|exists:PhieuNhap,id'
        ]);
    
        $ChiTietPhieuNhap = ChiTietPhieuNhap::findOrFail($id);
        $ChiTietPhieuNhap->update($request->all());

        return response()->json($ChiTietPhieuNhap);
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy($id)
    {
        $ChiTietPhieuNhap = ChiTietPhieuNhap::findOrFail($id);
        $ChiTietPhieuNhap->delete();
    }
    public function findDataByCTPhieuNhap_SanPham($idSanPham, $idPhieuNhap)
    {
        return ChiTietPhieuNhap::where('idSanPham', $idSanPham)
            ->where('idPhieuNhap', $idPhieuNhap)
            ->first();
    }
    public function findDataByidPhieuNhap($idPhieuNhap)
    {
        return ChiTietPhieuNhap::where('idPhieuNhap', $idPhieuNhap)->get();
    }

}
