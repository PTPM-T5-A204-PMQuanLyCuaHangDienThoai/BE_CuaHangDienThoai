<?php

namespace App\Http\Controllers;

use App\Models\NhomNguoiDung;
use App\Models\NguoiDung;
use App\Models\Nhom;
use Illuminate\Http\Request;

class NhomNguoiDungController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        return NhomNguoiDung::all();
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

        $Nhom = Nhom::all()->select(
            "id as value",
            "name as label"
        )->get();

        return response()->json([
            "NguoiDung" => $NguoiDung,
            "Nhom" => $Nhom,
        ]);
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $request->validate([
            'id' => 'required',
            'idNguoiDung' => 'required|exists:NguoiDung,id',
            'idNhom'=>'required|exists:Nhom,id'
        ]);

        NhomNguoiDung::create($request->all());
    }

    /**
     * Display the specified resource.
     */
    public function show($id)
    {
        return NhomNguoiDung::findOrFail($id);
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(NhomNguoiDung $NhomNguoiDung)
    {
        $NguoiDung = NguoiDung::all()->select(
            "id as value",
            "name as label"
        )->get();

        $Nhom = Nhom::all()->select(
            "id as value",
            "name as label"
        )->get();

        return response()->json([
            "NguoiDung" => $NguoiDung,
            "Nhom" => $Nhom,
        ]);
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, $id)
    {
        $request->validate([
            'id' => 'required',
            'idNguoiDung' => 'required|exists:NguoiDung,id',
            'idNhom'=>'required|exists:Nhom,id'
        ]);
    
        $NhomNguoiDung = NhomNguoiDung::findOrFail($id);
        $NhomNguoiDung->update($request->all());

        return response()->json($NhomNguoiDung);
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy($id)
    {
        $NhomNguoiDung = NhomNguoiDung::findOrFail($id);
        $NhomNguoiDung->delete();
    }
    public function getDataByidNhom($idNhom)
    {
        $nhomNguoiDung = NhomNguoiDung::where('idNhom', $idNhom)->get();

        return response()->json($nhomNguoiDung);
    }
}
