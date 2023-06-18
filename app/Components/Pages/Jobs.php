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


    public $category_id;
    public $jobtype_id;
    public $area_id;

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
      return Route::get('/jobs')->name('jobs');
    }


    public function render()
    {
        $search = $this->search;
        $category_id = $this->category_id;
        $jobtype_id = $this->jobtype_id;
        $area_id = $this->area_id;

        $jobs = Job::where('agreed', true)
            ->when($search, function ($query) use ($search) {
                return $query->OrWhere('title', 'LIKE', "%$search%");
            })
            ->when($category_id, function ($query) use ($category_id) {
                return $query->where('category_id', $category_id);
            })
            ->when($jobtype_id, function ($query) use ($jobtype_id) {
                return $query->where('jobtype_id', $jobtype_id);
            })
            ->when($area_id, function ($query) use ($area_id) {
                return $query->where('area_id', $area_id);
            })
            ->latest()
            ->with('user')
            ->paginate(8);
        return view('pages.jobs', ["jobs" => $jobs]);
    }
}
