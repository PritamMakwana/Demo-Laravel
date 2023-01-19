<?php

namespace App\Http\Controllers;

use App\Models\Device;
use Illuminate\Http\Request;

class DeviceController extends Controller
{
    //API

    //2.get data without parameter
    public function getList(){
      return Device::all();  
    }

     //3.get data with parameter
     public function getListpara($id = null){
        return $id ? Device::find($id):Device::all();  
      }
}

