<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class quoteController extends Controller
{
    function quotepage(Request $req){

        return view('pages.quote');

    }

    function quoteRequest(Request $req){

        sleep(10);
        return DB::table('quotes')->insert($req->input());
//        $query = DB::table('quotes')->insert($req->input());
//        return $query;

    }
}
