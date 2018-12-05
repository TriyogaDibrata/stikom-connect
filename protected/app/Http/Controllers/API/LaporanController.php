<?php

namespace App\Http\Controllers\API;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\laporans;
use Illuminate\Support\Facades\Auth;
use Validator;
use DB;
class LaporanController extends Controller
{
    public $successStatus = 200;
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function Laporanlist(Request $request)
    {   
        $laporan = laporans::where('hidden', 0)
                   ->with('file')
                   ->with('hasUser')
                   ->join('m_status', 'm_status.id', '=', 't_laporans.status_id' )
                   ->join('m_kategori', 'm_kategori.id', '=', 't_laporans.kategori_id' )
                   ->select('t_laporans.id', 't_laporans.user_id', 't_laporans.topik', 't_laporans.uraian', 'm_status.status', 'm_kategori.nama')
                   ->get();
        return response()->json(['count' => count($laporan), 'success' => $laporan], $this->successStatus);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function LaporanDetail(Request $request)
    {
        $laporan_id = $request->input('laporan_id');
        if (empty($laporan_id)) {
            return [
                "success" => false,
                "message" => "Item is not found"
            ];
        }

        $detail = laporans::where('t_laporans.id', $laporan_id)
                   ->with('files')
                   ->with('hasUser')
                   ->join('m_status', 'm_status.id', '=', 't_laporans.status_id' )
                   ->join('m_kategori', 'm_kategori.id', '=', 't_laporans.kategori_id' )
                   ->select('t_laporans.id', 't_laporans.user_id', 't_laporans.topik', 't_laporans.uraian', 'm_status.status', 'm_kategori.nama')
                   ->first();
        return response()->json(['success' => $detail], $this->successStatus);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
