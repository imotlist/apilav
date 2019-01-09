<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
//use App\Http\Request;
use App\Model\ArticleModel;
use App\Http\Resources\Article as ArticleResource;
class ApiArticle extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //get data
        $datas = ArticleModel::all();
        //return collection of article as a resource
        return ArticleResource::collection($datas);
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
        $data = $request->isMethod('put') ? ArticleModel::findOrFail($request->article_id) : new ArticleModel;

        $data->id = $request->input('article_id');
        $data->title = $request->input('title');
        $data->body = $request->input('body');

        if ($data->save()) {
            return new ArticleResource($data);
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
        $data = ArticleModel::findOrFail($id);
        //return collection of article as a resource
        return new ArticleResource($data);
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
        $data = ArticleModel::findOrFail($id);
        if ($data->delete()) {
            return new ArticleResource($data);
        }
    }
}
