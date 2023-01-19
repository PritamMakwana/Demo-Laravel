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

//1. make frist api
Route::get("dummy",[dummyAPI::class,"getData"]);
//http://127.0.0.1:8000/api/dummy

//2.get data with API
Route::get("getList",[DeviceController::class,"getList"]);

//2.get data with parameter API
Route::get("getListpara/{id?}",[DeviceController::class,"getListpara"]);
