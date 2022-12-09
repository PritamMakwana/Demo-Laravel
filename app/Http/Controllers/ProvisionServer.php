<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Customer;

class ProvisionServer extends Controller
{

    public function index()
    {
        return view('form');
    }

    public function store(Request $req)
    {
        // echo "<pre>";
        // print_r($req->all());
        //inset query
        $customer = new Customer;
        $customer->name = $req['name'];
        $customer->email = $req['email'];
        $customer->address = $req['address'];
        $customer->gender = $req['gen'];
        $customer->city = $req['city'];
        $customer->country = $req['country'];
        $customer->dob = $req['dob'];
        $customer->password = md5($req['password']);
        $customer->save();

        return redirect('/view');
    }

    public function view()
    {
        $cus = Customer::all();
        $data = compact('cus');
        return view('customer-view')->with($data);
    }

    public function delete($id)
    {
        //url method
        // Customer::find($id)->delete();

        //route method
        $customer = Customer::find($id);

        if (!is_null($customer)) {
            $customer->delete();
        }

        return redirect('view');
    }
}
