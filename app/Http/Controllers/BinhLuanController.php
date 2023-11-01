<?php

namespace App\Http\Controllers;

use App\Models\BinhLuan;
use App\Models\SanPham;
use App\Models\NguoiDung;
use Illuminate\Http\Request;

class BinhLuanController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        return BinhLuan::all();
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

        $SanPham = SanPham::all()->select(
            "id as value",
            "name as label"
        )->get();

        return response()->json([
            "NguoiDung" => $NguoiDung,
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
            'NoiDung' => 'required',
            'ThoiGian' => 'required',
            'idSanPham' => 'required|exists:SanPham,id',
            'idNguoiDung' => 'required|exists:NguoiDung,id'
        ]);

        BinhLuan::create($request->all());
    }

    /**
     * Display the specified resource.
     */
    public function show($id)
    {
        return BinhLuan::findOrFail($id);
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit($id)
    {
        $NguoiDung = NguoiDung::all()->select(
            "id as value",
            "name as label"
        )->get();

        $SanPham = SanPham::all()->select(
            "id as value",
            "name as label"
        )->get();

        return response()->json([
            "NguoiDung" => $NguoiDung,
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
            'NoiDung' => 'required',
            'ThoiGian' => 'required',
            'idSanPham' => 'required|exists:SanPham,id',
            'idNguoiDung' => 'required|exists:NguoiDung,id'
        ]);
    
        $BinhLuan = BinhLuan::findOrFail($id);
        $BinhLuan->update($request->all());

        return response()->json($BinhLuan);
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy($id)
    {
        $BinhLuan = BinhLuan::findOrFail($id);
        $BinhLuan->delete();
    }
}
