<?php

namespace App\Http\Controllers;

use App\Models\Group;
use Illuminate\Http\Request;
use App\Models\Member;

class IndexController extends Controller
{
    //one to one
    // public function index(){
    //     return Member::with('getGroup')->get();
    // }
    //one to many
    public function index(){
        return Member::with('group')->get();
    }

    public function group(){
        return Group::with('member')->get();
    }

}

