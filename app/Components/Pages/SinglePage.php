<?php

namespace App\Components\Pages;

use Illuminate\Support\Facades\Route;
use Livewire\Component;
use TCG\Voyager\Models\Page;


class SinglePage extends Component
{
    public $page;

    public function route()
    {
        return Route::get('/page/{slug}')
            ->name('page');
    }

    public function mount($slug)
    {
        $this->page = Page::where("slug", "LIKE", "%$slug%")->first();
    }

    public function render()
    {
        return view('pages.single-page');
    }
}
