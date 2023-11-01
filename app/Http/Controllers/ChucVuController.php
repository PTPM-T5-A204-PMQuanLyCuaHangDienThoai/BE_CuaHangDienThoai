<?php

namespace App\Http\Controllers;

use App\Models\ChucVu;
use Illuminate\Http\Request;
//use Illuminate\Support\Facades\DB;

class ChucVuController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        // $chucvu=DB::table('chucvu')->get();
        // return response()->json(['chucvu'=>$chucvu]);
        return ChucVu::all();
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $request->validate([
            'id' => 'required',
            'name' => 'required'
        ]);

        ChucVu::create($request->all());
        
    }

    /**
     * Display the specified resource.
     */
    public function show($id)
    {
        return ChucVu::findOrFail($id);
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(ChucVu $chucVu)
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
            'name' => 'required'
        ]);
    
        $chucVu = ChucVu::findOrFail($id);
        $chucVu->update($request->all());

        return response()->json($chucVu);
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy($id)
    {
        $chucVu = ChucVu::findOrFail($id);
        $chucVu->delete();
    }
}
