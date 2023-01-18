<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class DBemp extends Controller
{
    //
    public function empShow()
    {
        //1.select /emp
        $data = DB::table("employee")->get();
        return view('emp', ['data' => $data]);
    }
    public function empWhere()
    {
        // /emp/where

        //1.where
        $data = DB::table("employee")
        ->where('e_id',2)
        ->get();
        return view('emp', ['data' => $data]);

        //2.count
        //return  DB::table("employee")->count();
    }
    public function empInsert()
    {
        return DB::table("employee")
        ->insert([
            'e_name' => 'sanket',
            'e_email' => 'sanket@gmail.com',
            'e_address' => 'US',
            'e_no' => 1
        ]);
    }
    public function empUpdate()
    {
        return DB::table("employee")
        ->where('e_id',7)
        ->update([
            'e_name' => 'sanket1',
            'e_email' => 'sanket@gmail.com1',
            'e_address' => 'US1',
            'e_no' => 2
        ]);
    }
    public function empDelete()
    {     
        return DB::table("employee")->where('e_id',8)->delete();
    }
    public function empAgg()
    {     //Aggregate Query
        //sum
       // return DB::table("employee")->sum('e_id');
        //minmum
       // return DB::table("employee")->min('e_id');
        //maximum
        //return DB::table("employee")->max('e_id');
        //avgrage
       //return DB::table("employee")->avg('e_id');
       
    }
}
