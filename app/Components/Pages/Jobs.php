<?php

namespace App\Components\Pages;

use App\Models\Job;
use App\Models\JobCategory;
use App\Models\JobType;
use App\Models\Region;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use Livewire\Component;
use Livewire\WithPagination;

class Jobs extends Component
{
    use WithPagination;

    protected $paginationTheme = 'bootstrap';
    public $search;

    public $categories = [];
    public $jobTypes = [];
    public $regions = [];


    public function mount(Request $request)
    {
        if ($request->q) {
            $this->search = $request->q;
        }

        $this->categories = JobCategory::all();
        $this->jobTypes = JobType::all();
        $this->regions = Region::all();
    }


    public function route()
    {
        return Route::get('/jobs')
            ->name('jobs');
    }

    public function render()
    {
        $search = $this->search;
        $jobs = Job::where('agreed', true)
            ->when($search, function ($query) use ($search) {
                return $query->where('title', 'LIKE', "%$search%");
            })
            ->paginate(8);
        return view('pages.jobs', ["jobs" => $jobs]);
    }
}
