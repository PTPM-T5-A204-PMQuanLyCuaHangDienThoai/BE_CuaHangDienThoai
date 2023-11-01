<?php

namespace App\Http\Controllers;

use App\Models\NguoiDung;
use App\Models\ChucVu;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;

class NguoiDungController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        return NguoiDung::all();
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        $ChucVu = ChucVu::all()->select(
            "id as value",
            "name as label"
        )->get();
        return response()->json([
            "ChucVu" => $ChucVu
        ]);
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        // $request->validate([
        //     // 'id' => 'required',
        //     'name' => 'required',
        //     'TenDangNhap' => 'required|unique:NguoiDung,TenDangNhap',
        //     'MatKhau' => 'required|confirmed',
        //     'SDT' => 'required|unique:NguoiDung,SDT',
        //     //'DiaChi' => 'required',
        //     'Email' => 'required|unique:NguoiDung,Email|email',
        //     //'NgayTao' => 'required',
        //     //'NgayThayDoi' => 'required',
        //     //'NgaySinh' => 'required',
        //     'HoatDong' => 'required',
        //     'idChucVu' => 'required|exists:ChucVu,id',
        //     'GioiTinh' => 'required',
        //     'Anh' => 'required'
        // ]);
        $NguoiDung = $request->except(["MatKhau","XacNhanMatKhau"]);
        $NguoiDung["MatKhau"] = Hash::make($request["MatKhau"]);
        NguoiDung::create($NguoiDung);
    }

    /**
     * Display the specified resource.
     */
    public function show($id)
    {
        return NguoiDung::findOrFail($id);
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(NguoiDung $nguoiDung)
    {
        $ChucVu = ChucVu::all()->select(
            "id as value",
            "name as label"
        )->get();
        return response()->json([
            "ChucVu" => $ChucVu
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
            'TenDangNhap' => 'required|unique:NguoiDung,TenDangNhap',
            'MatKhau' => 'required',
            'SDT' => 'required|unique:NguoiDung,SDT',
            //'DiaChi' => 'required',
            'Email' => 'required|unique:NguoiDung,Email|email',
            //'NgayTao' => 'required',
            //'NgayThayDoi' => 'required',
            'HoatDong' => 'required',
            'idChucVu' => 'required|exists:ChucVu,id',
            'GioiTinh' => 'required',
            'Anh' => 'required'
        ]);
    
        // $NguoiDung = NguoiDung::findOrFail($id);
        // $NguoiDung->update($request->all());

        // return response()->json($NguoiDung);

        $data = NguoiDung::findOrFail($id);
        $NguoiDung = $request->except(["MatKhau","XacNhanMatKhau"]);
        $NguoiDung["MatKhau"] = Hash::make($request["MatKhau"]);
        $data->update($NguoiDung);
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy($id)
    {
        $NguoiDung = NguoiDung::findOrFail($id);
        $NguoiDung->delete();
    }
}
