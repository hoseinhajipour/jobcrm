<?php

namespace App\Components\Auth;

use Illuminate\Support\Facades\Route;
use Livewire\Component;

class SingupEm extends Component
{
    public function route()
    {
        return Route::get('/singup-em')
            ->name('SingupEm')
            ->middleware('guest');
    }
    public function render()
    {
        return view('auth.singup-em');
    }
}
