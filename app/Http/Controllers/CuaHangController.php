<?php

namespace App\Http\Controllers;

use App\Models\CuaHang;
use Illuminate\Http\Request;

class CuaHangController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        return CuaHang::all();
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $request->validate([
            'id' => 'required',
            'name' => 'required',
            'SDT' => 'required|unique:CuaHang,SDT',
            'DiaChi' => 'required',
            'Email' => 'required|unique:CuaHang,Email|email',
            //'MoTa' => 'required',
        ]);

        CuaHang::create($request->all());
    }

    /**
     * Display the specified resource.
     */
    public function show($id)
    {
        return CuaHang::findOrFail($id);
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(CuaHang $cuaHang)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, $id)
    {
        $request->validate([
            'id' => 'required',
            'name' => 'required',
            'SDT' => 'required|unique:CuaHang,SDT',
            'DiaChi' => 'required',
            'Email' => 'required|unique:CuaHang,Email|email',
            //'MoTa' => 'required',
        ]);
    
        $CuaHang = CuaHang::findOrFail($id);
        $CuaHang->update($request->all());

        return response()->json($CuaHang);
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy($id)
    {
        $CuaHang = CuaHang::findOrFail($id);
        $CuaHang->delete();
    }
}
