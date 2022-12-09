<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\RegistrationController;
use App\Http\Controllers\ProvisionServer;
use App\Models\Customer;

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

// Insert
//name router
Route::get('/insert',[ProvisionServer::class,'index'])->name('insert');
Route::post('/view',[ProvisionServer::class,'store']);
//select
Route::get('/view',[ProvisionServer::class,'view']);

//home page show
Route::get('/',[RegistrationController::class,'index']);

//delete
Route::get('/delete/{id}',[ProvisionServer::class,'delete'])->name('delete');




