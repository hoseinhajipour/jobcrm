<?php

namespace App\Components\Admin;

use App\Models\Job;
use App\Models\Resume;
use Illuminate\Http\Request;
use Livewire\Component;
use Livewire\WithPagination;

class ViewResumeByJob extends Component
{
    use WithPagination;

    protected $paginationTheme = 'bootstrap';
    public $job;

    public function mount(Request $request)
    {
        $this->job = Job::find($request->id);
    }

    public function render()
    {
        $resumes = Resume::where('job_id', $this->job->id)
            ->paginate(8);
        return view('admin.view-resume-by-job', ["resumes" => $resumes]);
    }
}
