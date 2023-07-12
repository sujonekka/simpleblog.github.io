<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class projectController extends Controller
{
    function projectpage(Request $req){

        return view('pages.project');
        
    }
}
