<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;

class WebGuard
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure(\Illuminate\Http\Request): (\Illuminate\Http\Response|\Illuminate\Http\RedirectResponse)  $next
     * @return \Illuminate\Http\Response|\Illuminate\Http\RedirectResponse
     */
    public function handle(Request $request, Closure $next)
    {
        // if($request->age < 18){
        //     echo "your age not valid to this page accesss";
        //     die();
        // }else{
        //     echo "your age valid to this page accesss";
            
        // }
        return $next($request);
    }
}
