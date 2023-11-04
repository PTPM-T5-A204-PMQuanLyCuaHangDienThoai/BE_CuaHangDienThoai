<?php

namespace App\Http\Controllers;

use App\Models\NguoiDung;
use App\Models\ChucVu;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use Illuminate\Validation\Rule;

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
        $request->validate([
            // 'id' => 'required',
            'name' => 'required',
            'TenDangNhap' => 'required|unique:NguoiDung,TenDangNhap',
            'MatKhau' => 'required|confirmed',
            'SDT' => 'required|unique:NguoiDung,SDT',
            //'DiaChi' => 'required',
            'Email' => 'required|unique:NguoiDung,Email|email',
            //'NgayTao' => 'required',
            //'NgayThayDoi' => 'required',
            //'NgaySinh' => 'required',
            'HoatDong' => 'required',
            'idChucVu' => 'required|exists:ChucVu,id',
            'GioiTinh' => 'required',
            'Anh' => 'required'
        ]);
        $NguoiDung = $request->except(["MatKhau","MatKhau_confirmation","HoatDong"]);
        $NguoiDung["MatKhau"] = Hash::make($request["MatKhau"]);
        $NguoiDung["HoatDong"] = $request["HoatDong"] ? 1 : 0;
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
            'TenDangNhap' => [
                'required',
                Rule::unique('NguoiDung', 'TenDangNhap')->ignore($request->id),
            ],
            'MatKhau' => 'required',
            'SDT' => [
                'required',
                Rule::unique('NguoiDung', 'SDT')->ignore($request->id),
            ],
            //'DiaChi' => 'required',
            'Email' => [
                'required',
                'email',
                Rule::unique('NguoiDung', 'Email')->ignore($request->id),
            ],
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
        $NguoiDung = $request->except(["HoatDong","MatKhau","MatKhau_confirmation"]);
        $NguoiDung["HoatDong"] = $request["HoatDong"] ? 1 : 0;
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

    //Khôi phục mật khẩu
    public function resetMatKhau(Request $request, $id)
    {
        $data = NguoiDung::findOrFail($id);

        $request->validate([
            'MatKhau' => 'required|confirmed',
        ]);
    
        $data->update([
            'MatKhau' => Hash::make($request->input('MatKhau'))
        ]);
    }
    public function checkDuplicateTenDangNhap($TenDangNhap)
    {

        // Tìm kiếm NguoiDung với TenDangNhap tương ứng
        $nguoiDung = NguoiDung::where('TenDangNhap', $TenDangNhap)->first();

        // Trả về kết quả dưới dạng JSON
        return $nguoiDung;
    }
    public function checkDuplicateSDT($SDT)
    {

        // Tìm kiếm NguoiDung với TenDangNhap tương ứng
        $nguoiDung = NguoiDung::where('SDT', $SDT)->first();

        // Trả về kết quả dưới dạng JSON
        return $nguoiDung;
    }
    public function checkDuplicateEmail($Email)
    {

        // Tìm kiếm NguoiDung với TenDangNhap tương ứng
        $nguoiDung = NguoiDung::where('Email', $Email)->first();

        // Trả về kết quả dưới dạng JSON
        return $nguoiDung;
    }
    public function checkLogin(Request $request)
    {
        $TenDangNhap = $request->input('TenDangNhap');
        $MatKhau = $request->input('MatKhau');

        $user = NguoiDung::where('TenDangNhap', $TenDangNhap)->first();

        if ($user && Hash::check($MatKhau, $user->MatKhau)) {
            // Đăng nhập thành công
            return response()->json(['success' => true]);
        } else {
            // Sai tên đăng nhập hoặc mật khẩu
            return response()->json(['success' => false]);
        }
    }
    public function getDataIsNotAddByGroup($idNhom)
    {
        // Sử dụng model NguoiDung và NhomNguoiDung để lấy các quyền chưa được thêm vào bảng NhomNguoiDung
        $missingPermissions = NguoiDung::whereNotIn('id', function ($query) use ($idNhom) {
            $query->select('idNguoiDung')
                ->from('NhomNguoiDung')
                ->where('idNhom', $idNhom);
        })->get();

        // Trả về kết quả dưới dạng JSON
        return response()->json($missingPermissions);
    }
}

