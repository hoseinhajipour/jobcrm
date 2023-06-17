<?php

namespace App\Components\Dashboard;

use App\Models\Resume;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Route;
use Livewire\Component;
use Livewire\WithPagination;

class JobSeekMyResumes extends Component
{
    use WithPagination;

    protected $paginationTheme = 'bootstrap';

    public $status;

    public function mount($status)
    {
        $this->status = $status;
    }

    public function route()
    {
        return Route::get('/profile/my-resumes/{status}')
            ->name('MyResumes');
    }

    public function render()
    {
        $resumes = Resume::where('user_id', Auth::user()->id)->where("status", $this->status)
            ->paginate(8);
        return view('dashboard.job-seek-my-resumes', ["resumes" => $resumes]);
    }
}
