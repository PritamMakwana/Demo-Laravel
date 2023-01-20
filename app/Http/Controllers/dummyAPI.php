<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Blade;

class dummyAPI extends Controller
{
    //
    public function getData()
    {
        return [
            "name" => "Pritam",
            "email" => "pritam@gmail.com",
            "address" => "Amreli"
        ];
    }

    //Inline blade template 
    public function getblade(){
        $totalProduct = 20;
        return Blade::render("<h1>{{$totalProduct}}Products List </h1>",['total' => $totalProduct]);
    }

}
