<?php

use App\Http\Controllers\DeviceController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\dummyAPI;
use App\Models\Device;

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

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});

Route::get('/get-data',function (){
    return 'Hello';
});

//1. make frist api  mehtod get
Route::get("dummy",[dummyAPI::class,"getData"]);
//http://127.0.0.1:8000/api/dummy

//2.get data with API mehtod get
Route::get("getList",[DeviceController::class,"getList"]);

//3.get data with parameter API mehtod get
Route::get("getListpara/{id?}",[DeviceController::class,"getListpara"]);

//4.insert data using API mehtod post
Route::post("add",[DeviceController::class,"add"]);

//5.update data using API mehtod put
Route::put("update",[DeviceController::class,"update"]);

//6.delete data using API mehtod delete
Route::delete("delete/{id}",[DeviceController::class,"delete"]);

//6.serach data using API mehtod get
Route::get("search/{name}",[DeviceController::class,"search"]);

//7.file upload in api
Route::post("upload",[DeviceController::class,'upload']);