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
Route::get('mitras', 'ApiMitra@index');
//List single
Route::get('mitra/{id}','ApiMitra@show');
//update
Route::put('mitra','ApiMitra@store');

//Client
// List
Route::get('clients', 'ApiClient@index');
//create new
Route::post('client','ApiClient@store');
//update
Route::put('client','ApiClient@store');

//Produk
// List
Route::get('produks', 'ApiProduk@index');
//create new
Route::post('produk','ApiProduk@store');
//update
Route::put('produk','ApiProduk@store');