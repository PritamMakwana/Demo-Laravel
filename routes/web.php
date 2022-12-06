<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\DemoController;
use App\Http\Controllers\SingleActionController;
use App\Http\Controllers\PhotoController;


/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/
//Basic controller
Route::get('/',[DemoController::class,'index']);
Route::get('/about','App\Http\Controllers\DemoController@about');
//Single Action Controller
Route::get('/con',SingleActionController::class);
//Resource Controller
Route::resource('/photo',PhotoController::class);

