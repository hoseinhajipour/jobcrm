<?php

namespace App\Components\Dashboard;

use App\Models\Job;
use App\Models\Resume;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Route;
use Livewire\Component;
use Livewire\WithPagination;

class ViewJobResumes extends Component
{

    use WithPagination;

    protected $paginationTheme = 'bootstrap';
    public $job;

    public function mount($id)
    {
        $this->job = Job::find($id);
    }

    public function route()
    {
        return Route::get('/profile/job-resumes/{id}')
            ->name('ViewJobResumes');
    }

    public function render()
    {
        $resumes = Resume::where('job_id', $this->job->id)
            ->paginate(8);
        return view('dashboard.view-job-resumes', ["resumes" => $resumes]);
    }
}
