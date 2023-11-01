<?php

namespace App\Http\Controllers;

use App\Models\NhaCungCap;
use Illuminate\Http\Request;

class NhaCungCapController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        return NhaCungCap::all();
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
            'SDT' => 'required|unique:NhaCungCap,SDT',
            'DiaChi' => 'required',
            'Email' => 'required|unique:NhaCungCap,Email|email',
            'HoatDong' => 'required',
        ]);

        NhaCungCap::create($request->all());
    }

    /**
     * Display the specified resource.
     */
    public function show($id)
    {
        return NhaCungCap::findOrFail($id);
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(NhaCungCap $nhaCungCap)
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
            'SDT' => 'required|unique:NhaCungCap,SDT',
            'DiaChi' => 'required',
            'Email' => 'required|unique:NhaCungCap,Email|email',
            'HoatDong' => 'required',
        ]);
    
        $NhaCungCap = NhaCungCap::findOrFail($id);
        $NhaCungCap->update($request->all());

        return response()->json($NhaCungCap);
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy($id)
    {
        $NhaCungCap = NhaCungCap::findOrFail($id);
        $NhaCungCap->delete();
    }
}
