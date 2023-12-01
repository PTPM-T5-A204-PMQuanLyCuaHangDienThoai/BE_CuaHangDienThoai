<?php

namespace App\Http\Controllers;

use App\Models\AI;
use Illuminate\Http\Request;

class AIController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        //
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
        //
    }

    /**
     * Display the specified resource.
     */
    public function show(AI $aI)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(AI $aI)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, AI $aI)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(AI $aI)
    {
        //
    }
    public function get1000Data(){
        return AI::take(1000)->get();
    }
    public function getHieuSuat(){
        $columnData = AI::distinct()->pluck('HieuSuat');

        return response()->json($columnData);
    }
    public function getCamera(){
        $columnData = AI::distinct()->pluck('Camera');

        return response()->json($columnData);
    }
    public function getPin(){
        $columnData = AI::distinct()->pluck('Pin');

        return response()->json($columnData);
    }
    public function getTanSo(){
        $columnData = AI::distinct()->pluck('TanSo');

        return response()->json($columnData);
    }
}
