<?php

namespace App\Components\Pages;

use Illuminate\Support\Facades\Route;
use Livewire\Component;

class Services extends Component
{
    public function route()
    {
        return Route::get('/service')
            ->name('service');
    }

    public function render()
    {
        return view('pages.services');
    }
}
