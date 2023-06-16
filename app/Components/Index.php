<?php

namespace App\Components;

use Illuminate\Support\Facades\Route;
use Livewire\Component;
use TCG\Voyager\Models\Post;

class Index extends Component
{
    public $LastPostJobSeeker;
    public $LastPostEmployer;


    public function mount()
    {
        $this->LastPostJobSeeker = Post::where("category_id", 1)->latest()->first();
        $this->LastPostEmployer = Post::where("category_id", 2)->latest()->first();

    }

    public function route()
    {
        return Route::get('/')
            ->name('index');
    }

    public function render()
    {
        return view('index');
    }
}
