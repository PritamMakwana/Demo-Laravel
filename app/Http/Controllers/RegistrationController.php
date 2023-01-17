<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Http;

class RegistrationController extends Controller
{
    public function index(){
        return view('home');
    } 

    public function welcome(){
        $collection = Http::get("https://api.github.com/users")->collect();
         return view('welcome', ['collection'=> $collection ]);
    }

  
}
