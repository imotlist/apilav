<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Model\MitraModel;
use App\Http\Resources\Mitra as MitraResource;

class ApiMitra extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //get data
        $datas = MitraModel::all();
        //return collection of article as a resource
        return MitraResource::collection($datas);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $data = $request->isMethod('put') ? MitraModel::findOrFail($request->m_id) : new MitraModel;

        $data->m_nama = $request->input('nama');
        $data->m_email = $request->input('email');
        $data->m_alamat = $request->input('alamat');
        $data->m_telp = $request->input('telp');
        $data->m_password = md5($request->input('password'));

        if ($data->save()) {
            return new MitraResource($data);
        }else{
            echo "Error";
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //get data
        $data = MitraModel::findOrFail($id);
        
        return new MitraResource($data);
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
