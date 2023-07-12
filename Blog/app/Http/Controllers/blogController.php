<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class blogController extends Controller
{
    function blogpage(Request $req){

        return view('pages.blog');

    }

    function  blogData(){
        return DB::table('blogs')->get();
    }
}
