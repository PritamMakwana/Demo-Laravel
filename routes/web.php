<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\RegistrationController;
use App\Http\Controllers\ProvisionServer;
use App\Models\Customer;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\App;
use App\Http\Controllers\IndexController;
use App\Http\Controllers\DBemp;
use  Illuminate\Support\Str;


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


Route::post('/', [ProvisionServer::class, 'store']);
//name router
Route::get('/insert', [ProvisionServer::class, 'index'])->name('insert');
//select
Route::get('/view', [ProvisionServer::class, 'view'])->name('view');

//Route Middleware
// //--- protected middleware 
// //name router
// Route::get('/insert', [ProvisionServer::class, 'index'])->name('insert')->middleware('guard');
// //select
// Route::get('/view', [ProvisionServer::class, 'view'])->name('view')->middleware('guard');
// //-------------
// //protected else part
// Route::get('/no-access', function () {
//     echo "You re not to allowed access the page";
//     die();
// });
// //session login & logout  (protected)
// Route::get('/login', function () {
//     session()->put('user_id', 1);
//     return redirect('/');
// });
// Route::get('/logout', function () {
//     session()->forget('user_id');
//     return redirect('/');
// });

//Group Middleware
//--- protected middleware 

// //first way
// //name router
// Route::get('/insert', [ProvisionServer::class, 'index'])->name('insert')->middleware('guard');
// //select
// Route::get('/view', [ProvisionServer::class, 'view'])->name('view')->middleware('guard');
// //-------------

// second way
// Route::middleware(['guard'])->group(function () {
//     // //name router
//     Route::get('/insert', [ProvisionServer::class, 'index'])->name('insert');
//     // //select
//     Route::get('/view', [ProvisionServer::class, 'view'])->name('view');
// });


// //protected else part
// Route::get('/no-access', function () {
//     echo "You re not to allowed access the page";
//     die();
// });
// //session login & logout  (protected)
// Route::get('/login', function () {
//     session()->put('user_id', 1);
//     return redirect('/');
// });
// Route::get('/logout', function () {
//     session()->forget('user_id');
//     return redirect('/');
// });



//home page show
Route::get('/', [RegistrationController::class, 'index']);

//welcome page
Route::get('/welcome', [RegistrationController::class, 'welcome']);


//language 
Route::get('/lng/{lang?}', function ($lang = null) {
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

//one to one reletion in table using orm
Route::get('onetoone/data', [IndexController::class, 'index']);
//one to many relation in table 
Route::get('onetoone/group', [IndexController::class, 'group']);


//Query Bulider
//select
Route::get('/emp', [DBemp::class, 'empShow']);
//where condition
Route::get('/emp/where', [DBemp::class, 'empWhere']);
//Insert
Route::get('/emp/insert', [DBemp::class, 'empInsert']);
//Update
Route::get('/emp/update', [DBemp::class, 'empUpdate']);
//Delete
Route::get('/emp/delete', [DBemp::class, 'empDelete']);
//Aggregate Query
Route::get('/emp/agg', [DBemp::class, 'empAgg']);


//Fuent Strings
Route::get('/fuent', function(){
    //1 way
// $info = "Hi, learn Laravel";
// $info = Str:: ucfirst($info);
// $info = Str::replaceFirst("Hi","Hello",$info);
// echo $info;

  //2 way
  $info = "Hi, learn Laravel";
  $info = Str::of($info)
  ->ucfirst($info)
  ->replaceFirst("Hi","Hello",$info);

  echo $info;

});

//Route model binding
Route::get('rmb/{key:customer_id}', [ProvisionServer::class, 'rmb']);
