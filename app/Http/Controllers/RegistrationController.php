<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class RegistrationController extends Controller
{
    public function index(){
        return view('home');
    } 

    public function welcome(){
        return view('welcome');
    }

  
}
