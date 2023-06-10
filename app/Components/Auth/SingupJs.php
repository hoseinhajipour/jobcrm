<?php

namespace App\Components\Auth;

use Illuminate\Support\Facades\Route;
use Livewire\Component;

class SingupJs extends Component
{
    public function route()
    {
        return Route::get('/singup-js')
            ->name('SingupJs')
            ->middleware('guest');
    }
    public function render()
    {
        return view('auth.singup-js');
    }
}
