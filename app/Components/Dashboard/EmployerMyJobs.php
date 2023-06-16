<?php

namespace App\Components\Dashboard;

use App\Models\Job;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Route;
use Livewire\Component;
use Livewire\WithPagination;

class EmployerMyJobs extends Component
{
    use WithPagination;

    protected $paginationTheme = 'bootstrap';



    public function route()
    {
        return Route::get('/profile/my-jobs')
            ->name('MyJobs');
    }

    public function render()
    {


        if (Auth::user()->role_id == 1) {
            $jobs = Job::with("Resumes")
                ->paginate(8);
        } else {
            $jobs = Job::where('user_id', Auth::user()->id)
                ->with("Resumes")
                ->paginate(8);
        }

        return view('dashboard.employer-my-jobs', ["jobs" => $jobs]);
    }
}