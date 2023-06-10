<?php

namespace App\Components\Pages;

use Illuminate\Support\Facades\Route;
use Livewire\Component;

class Mobile extends Component
{
    public function route()
    {
        return Route::get('/mobile')
            ->name('mobile');
    }
    public function render()
    {
        return view('pages.mobile');
    }
}
