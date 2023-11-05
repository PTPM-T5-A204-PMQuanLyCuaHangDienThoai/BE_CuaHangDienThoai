<?php

namespace App\Http\Controllers;

use App\Models\DanhMuc;
use Illuminate\Http\Request;

class DanhMucController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        return DanhMuc::all();
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
            'Anh' => 'required'
        ]);

        DanhMuc::create($request->all());
    }

    /**
     * Display the specified resource.
     */
    public function show($id)
    {
        return DanhMuc::findOrFail($id);
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(DanhMuc $danhMuc)
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
            'Anh' => 'required'
        ]);
    
        $DanhMuc = DanhMuc::findOrFail($id);
        $DanhMuc->update($request->all());

        return response()->json($DanhMuc);
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy($id)
    {
        $DanhMuc = DanhMuc::findOrFail($id);
        $DanhMuc->delete();
    }
}
