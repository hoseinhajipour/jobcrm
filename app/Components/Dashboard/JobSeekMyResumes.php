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


    public function route()
    {
        return Route::get('/profile/my-resumes')
            ->name('MyResumes');
    }

    public function render()
    {
        $resumes = Resume::where('user_id', Auth::user()->id)
            ->paginate(8);
        return view('dashboard.job-seek-my-resumes', ["resumes" => $resumes]);
    }
}
