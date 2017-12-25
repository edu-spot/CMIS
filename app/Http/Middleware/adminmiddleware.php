<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Support\Facades\Auth;
use App\user;

class adminmiddleware
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle($request, Closure $next)
    {

     

      if (Auth::user() &&  Auth::user()->user_type == 'A')
       {
            return $next($request);
     }

    return redirect('/');
  }  
}
