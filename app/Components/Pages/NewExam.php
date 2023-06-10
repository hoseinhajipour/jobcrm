<?php

namespace App\Components\Pages;

use Illuminate\Support\Facades\Route;
use Livewire\Component;

class NewExam extends Component
{
    public function route()
    {
        return Route::get('/new-exam')
            ->name('NewExam')
            ->middleware('auth');
    }
    public function render()
    {
        return view('pages.new-exam');
    }
}
