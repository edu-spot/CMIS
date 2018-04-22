<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\user;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {

         if (Auth::user() &&  Auth::user()->user_type == 'A')
       {
            return view('users_view/admin/home');
     }
               if (Auth::user() &&  Auth::user()->user_type == 'S')
       {
            return view('users_view/student/home');
     }
     if (Auth::user() &&  Auth::user()->user_type == 'E')
       {
            return view('users_view/teacher/home');
     }
        // return view('home');
    }
}
