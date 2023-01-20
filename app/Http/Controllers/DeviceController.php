<?php

namespace App\Http\Controllers;

use App\Models\Device;
use Illuminate\Http\Request;

class DeviceController extends Controller
{
    //API

    //2.get data without parameter
    public function getList()
    {
        return Device::all();
    }

    //3.get data with parameter
    public function getListpara($id = null)
    {
        return $id ? Device::find($id) : Device::all();
    }

    //3.API with post method (Api using data insert)

    public function add(Request $req)
    {
        $device = new Device;
        $device->name = $req->name;
        $device->member_id = $req->member_id;
        $result = $device->save();

        if($result){
            return[ "result" => "Data has been saved"];
        }else{
            return ["result" => "operation Failed"];
        }

    }

    public function update(Request $req)
    {
        $device = Device::find($req->id);
        $device->name = $req->name;
        $device->member_id = $req->member_id;
        $result = $device->save();

        if($result){
            return[ "result" => "Data has been update"];
        }else{
            return ["result" => "update operation Failed"];
        }

    }

    public function delete($id)
    {
        $device = Device::find($id);
        $result = $device->delete();

        if($result){
            return[ "result" => "record hasbeen delete "];
        }else{
            return ["result" => "delete operation Failed"];
        }

    }

    public function search($name)
    {
        return Device::where("name","like","%".$name)->get();
    }

    public function upload(Request $req){
        $result = $req->file('filex')->store('apiDocs');
        return ['result' => $result ];
    }

}
