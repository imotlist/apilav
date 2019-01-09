<?php

use Illuminate\Http\Request;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});


// List Article
Route::get('articles', 'ApiArticle@index');
//List single
Route::get('article/{id}','ApiArticle@show');
//create new
Route::post('article','ApiArticle@store');
//update
Route::put('article','ApiArticle@store');
//delete
Route::delete('article/{id}','ApiArticle@destroy');

//Mitra
// List
Route::get('mitra', 'ApiMitra@index');
//List single
Route::get('mitra/{id}','ApiMitra@show');