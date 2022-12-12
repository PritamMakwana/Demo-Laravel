<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Customer;
use LDAP\Result;

class ProvisionServer extends Controller
{

    public function index()
    {
        $url = url('/');
        $title = "Insert Data";
        $customer = null;
        $data = compact('url', 'title', 'customer');
        return view('form')->with($data);
    }

    public function store(Request $req)
    {
        //demo use helper 
        // p($req->all());
        // die();

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

    //trash
    public function trash()
    {
        $cus = Customer::onlyTrashed()->get();
        $data = compact('cus');
        return view('customer-view-trash')->with($data);
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

    //restore
    public function restore($id)
    {

        $customer = Customer::withTrashed()->find($id);

        if (!is_null($customer)) {
            $customer->restore();
        }

        return redirect('view');
    }
    //forceDelete
    public function forceDelete($id)
    {

        $customer = Customer::withTrashed()->find($id);

        if (!is_null($customer)) {
            $customer->forceDelete();
        }

        return redirect()->back();
    }


    public function edit($id)
    {

        $customer = Customer::find($id);
        if (is_null($customer)) {
            return redirect('view');
        } else {
            $title = "Update Data";
            $url = url('/update') . "/" . $id;
            $data = compact('customer', 'url', 'title');
            return view('form')->with($data);
        }
    }

    public function update($id, Request $req)
    {
        $customer = Customer::find($id);

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

    // laravel from open
    public function laravelForm()
    {
        $json = null;
        $data = compact('json');
        return view('laravel-form')->with($data);
    }
    //formShow
    public function formShow(Request $req)
    {
        $arrayData = [
            'name' => $req['username'],
            'password' => $req['password'],
            'email' => $req['email'],
            'file' => $req['uploadFile'],
            'hobby' => $req['hbb'],
            'gender' => $req['gender'],
            'rollno' => $req['rollno'],
            'dateofbrith' => $req['dob'],
            'city' => $req['city']
        ];

        $json = json_encode($arrayData);
        $data = compact('json');
        return view('laravel-form')->with($data);
    }
}
