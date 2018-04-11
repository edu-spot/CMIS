<?php

namespace App\Http\Middleware;

use Closure;

class employeemiddleware
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
         if ((Auth::user() &&  Auth::user()->user_type == 'E' )|| (Auth::user() &&  Auth::user()->user_type == 'A' ))
       {
            return $next($request);
     }

    return redirect('/');
    }
}
