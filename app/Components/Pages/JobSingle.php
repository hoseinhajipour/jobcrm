<?php

namespace App\Components\Pages;

use Illuminate\Support\Facades\Route;
use Livewire\Component;

class JobSingle extends Component
{
    public function route()
    {
        return Route::get('/job/{slug}')
            ->name('job');
    }
    public function render()
    {
        return view('pages.job-single');
    }
}
