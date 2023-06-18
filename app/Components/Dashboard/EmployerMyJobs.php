<?php

namespace App\Components\Dashboard;

use App\Models\Job;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Route;
use Jantinnerezo\LivewireAlert\LivewireAlert;
use Livewire\Component;
use Livewire\WithPagination;

class EmployerMyJobs extends Component
{
    use WithPagination;
    use LivewireAlert;
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

    public function Remove($id)
    {
        Job::find($id)->delete();
        $this->alert('success', '성공적으로 등록되었습니다', ['position' => 'center']);
    }
}
