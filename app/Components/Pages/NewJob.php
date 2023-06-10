<?php

namespace App\Components\Pages;

use Illuminate\Support\Facades\Route;
use Livewire\Component;

class NewJob extends Component
{
    public function route()
    {
        return Route::get('/new-job')
            ->name('NewJob')
            ->middleware('auth');
    }
    public function render()
    {
        return view('pages.new-job');
    }
}
