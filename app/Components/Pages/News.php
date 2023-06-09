<?php

namespace App\Components\Pages;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use Livewire\Component;
use Livewire\WithPagination;
use TCG\Voyager\Models\Post;

class News extends Component
{
    use WithPagination;

    protected $paginationTheme = 'bootstrap';
    public $search;

    public $categories = [];

    public function mount(Request $request)
    {
        if ($request->q) {
            $this->search = $request->q;
        }
    }
    public function route()
    {
        return Route::get('/news')
            ->name('news');
    }
    public function render()
    {
        $search = $this->search;
        $posts = Post::where('status', "PUBLISHED")
            ->when($search, function ($query) use ($search) {
                return $query->where('title', 'LIKE', "%$search%");
            })
            ->paginate(8);
        return view('pages.news',["posts"=>$posts]);
    }
}
