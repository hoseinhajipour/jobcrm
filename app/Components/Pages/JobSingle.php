<?php

namespace App\Components\Pages;

use App\Models\Job;
use Illuminate\Support\Facades\Route;
use Livewire\Component;

class JobSingle extends Component
{
    public $job;

    public function mount($slug)
    {
        $this->job = Job::where("slug", "LIKE", "%$slug%")->first();
    }

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
