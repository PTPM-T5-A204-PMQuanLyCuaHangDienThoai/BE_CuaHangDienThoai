<?php

namespace App\Http\Controllers;

use App\Models\NguoiDung;
use App\Models\PhanQuyen;
use App\Models\Quyen;
use App\Models\Nhom;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class PhanQuyenController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        return PhanQuyen::all();
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        $Quyen = Quyen::all()->select(
            "id as value",
            "name as label"
        )->get();

        $Nhom = Nhom::all()->select(
            "id as value",
            "name as label"
        )->get();

        return response()->json([
            "Quyen" => $Quyen,
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
            'idQuyen' => 'required|exists:Quyen,id',
            'idNhom'=>'required|exists:Nhom,id'
        ]);

        PhanQuyen::create($request->all());
    }

    /**
     * Display the specified resource.
     */
    public function show($id)
    {
        return PhanQuyen::findOrFail($id);
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(PhanQuyen $phanQuyen)
    {
        $Quyen = Quyen::all()->select(
            "id as value",
            "name as label"
        )->get();

        $Nhom = Nhom::all()->select(
            "id as value",
            "name as label"
        )->get();

        return response()->json([
            "Quyen" => $Quyen,
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
    
        $PhanQuyen = PhanQuyen::findOrFail($id);
        $PhanQuyen->update($request->all());

        return response()->json($PhanQuyen);
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy($id)
    {
        $PhanQuyen = PhanQuyen::findOrFail($id);
        $PhanQuyen->delete();
    }
    public function getDataByidNhom($idNhom)
    {
        $phanQuyen = PhanQuyen::where('idNhom', $idNhom)->get();

        return response()->json($phanQuyen);
    }
    public function checkQuyen($idNguoiDung, $idQuyen)
    {
        // Kiểm tra xem người dùng có idQuyen tương ứng trong bảng PhanQuyen hay không
        $result = DB::table('PhanQuyen')
            ->where('idNhom', function ($query) use ($idNguoiDung) {
                $query->select('idNhom')
                    ->from('NhomNguoiDung')
                    ->where('idNguoiDung', $idNguoiDung);
            })
            ->where('idQuyen', $idQuyen)
            ->exists();

        // Trả về kết quả true hoặc false
        return response()->json(['result' => $result]);
    }
}
