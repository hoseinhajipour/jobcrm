<?php

namespace App\Components\Pages;

use Illuminate\Support\Facades\Route;
use Livewire\Component;

class Jobs extends Component
{
    public function route()
    {
        return Route::get('/jobs')
            ->name('jobs');
    }
    public function render()
    {
        return view('pages.jobs');
    }
}
