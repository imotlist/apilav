<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Model\MitraModel;
class MitraController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $mitra = MitraModel::all();
        return view('admin.mitra.mitraIndex', compact('mitra'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('admin.mitra.mitraCreate');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $request->validate([
            'nama'=>'required',
            'email'=> 'required',
            'alamat' => 'required'
        ]);
        $status = $request->get('status');
        if($status == 'on'){$status = 1; }else{$status=0;}
        $data = new MitraModel([
            'm_nama' => $request->get('nama'),
            'm_telp' => $request->get('telp'),
            'm_status' => $status,
            'm_pemilik' => $request->get('pemilik'),
            'm_email' => $request->get('email'),
            'm_alamat' => $request->get('alamat'),
            'm_password' => md5($request->get('pass1'))
        ]);
      // print_r($data);
      $data->save();
      return redirect('/mitra')->with('success', 'Data has been added');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        return view('admin.mitra.mitraShow');
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $data = MitraModel::find($id);

        return view('admin.mitra.mitraEdit', compact('data'));
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
        $request->validate([
            'nama'=>'required',
            'email'=> 'required',
            'telp'=> 'required',
            'alamat' => 'required'
        ]);

        
        $status = $request->get('status');
        if($status == 'on'){$status = 1; }else{$status=0;}
        $data = MitraModel::find($id);
        $data->m_nama = $request->get('nama');
        $data->m_telp = $request->get('telp');
        $data->m_status = $status;
        $data->m_pemilik = $request->get('pemilik');
        $data->m_email = $request->get('email');
        $data->m_alamat = $request->get('alamat');

        $data->save();

return redirect('/mitra')->with('success', 'Data has been updated');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $data = MitraModel::find($id);
        $data->delete();

        return redirect('/mitra')->with('success', 'Data has been deleted Successfully');
    }
}
