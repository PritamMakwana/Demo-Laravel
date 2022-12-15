<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\RegistrationController;
use App\Http\Controllers\ProvisionServer;
use App\Models\Customer;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\App;

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
Route::get('/insert', [ProvisionServer::class, 'index'])->name('insert');
Route::post('/', [ProvisionServer::class, 'store']);
//select
Route::get('/view', [ProvisionServer::class, 'view'])->name('view');

//home page show
// Route::get('/',[RegistrationController::class,'index']);

//language 
Route::get('/{lang?}', function ($lang = null) {
    App::setLocale($lang);
    return view('home');
});

//delete
Route::get('/delete/{id}', [ProvisionServer::class, 'delete'])->name('delete');
//update
Route::get('/edit/{id}', [ProvisionServer::class, 'edit'])->name('edit');
Route::post('/update/{id}', [ProvisionServer::class, 'update'])->name('update');

//session retrive
Route::get('/get-all-session', function () {
    $session = session()->all();
    p($session);
});
//session store
Route::get('set-session', function (Request $req) {
    $req->session()->put('u_id', '10');
    $req->session()->put('u_name', 'user master');
    $req->session()->flash('status', 'Success'); //tempary store
    return redirect('get-all-session');
});
//session destroy
Route::get('destroy-session', function () {
    //1 
    // session()->forget('u_id');
    // session()->forget('u_name');
    //2
    session()->forget(['u_id', 'u_name']);
    return redirect('get-all-session');
});

//Trash
Route::get('/trash', [ProvisionServer::class, 'trash'])->name('trash');
//restore
Route::get('/restore/{id}', [ProvisionServer::class, 'restore'])->name('restore');
//parmanet delete
Route::get('/force-delete/{id}', [ProvisionServer::class, 'forceDelete'])->name('force-delete');

//laravel Form
Route::get('/laravel-form', [ProvisionServer::class, 'laravelForm']);
Route::post('/laravel-form', [ProvisionServer::class, 'formShow']);

//gallery
Route::get('/gallery', [ProvisionServer::class, 'galleryShow']);
Route::post('/gallery', [ProvisionServer::class, 'galleryUplaod']);
