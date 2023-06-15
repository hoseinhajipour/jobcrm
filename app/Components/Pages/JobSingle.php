<?php

namespace App\Components\Pages;

use App\Models\Job;
use Illuminate\Support\Facades\Route;
use Livewire\Component;

class JobSingle extends Component
{
    public $job;

    public function mount($id)
    {
        $this->job = Job::where("id", $id)->with("user")->first();
    }

    public function route()
    {
        return Route::get('/job/{id}')
            ->name('job');
    }

    public function render()
    {
        return view('pages.job-single');
    }
}
