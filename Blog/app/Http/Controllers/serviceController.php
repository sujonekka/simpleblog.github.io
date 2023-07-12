<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class serviceController extends Controller
{
    function servicepage(Request $req){

        return view('pages.service');
        
    }
}
