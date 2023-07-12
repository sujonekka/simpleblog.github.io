<?php

namespace App\Http\Controllers;


use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;


class contactController extends Controller
{
    function contactpage(Request $req){

        return view('pages.contact');

    }

    function contactRequest(Request $req){
        return DB::table('contacts')->insert($req->input());
    }
}
