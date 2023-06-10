<?php

namespace App\Components\Pages;

use Illuminate\Support\Facades\Route;
use Livewire\Component;

class ContactUs extends Component
{
    public function route()
    {
        return Route::get('/contact')
            ->name('contact');
    }
    public function render()
    {
        return view('pages.contact-us');
    }
}
