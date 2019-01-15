<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Model\ClientModel;
use App\Http\Resources\Client as ClientResource;
class ApiClient extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //get data
        $datas = ClientModel::all();
        //return collection of article as a resource
        return ClientResource::collection($datas);
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
        $data = $request->isMethod('put') ? MitraModel::findOrFail($request->c_id) : new MitraModel;

        $data->c_username = $request->input('username');
        $data->c_fullname = $request->input('fullname');
        $data->c_email = $request->input('email');
        $data->c_alamat = $request->input('alamat');
        $data->c_telp = $request->input('telp');
        $data->c_password = md5($request->input('password'));

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
        $data = ClientModel::findOrFail($id);
        
        return new ClientResource($data);
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
