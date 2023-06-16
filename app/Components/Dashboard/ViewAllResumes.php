<?php

namespace App\Components\Dashboard;

use App\Models\Resume;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Route;
use Livewire\Component;
use Livewire\WithPagination;

class ViewAllResumes extends Component
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
        return Route::get('/profile/all-resumes/{status}')
            ->name('ViewAllResumes');
    }

    public function render()
    {
        if (Auth::user()->role_id == 1) {
            $resumes = Resume::where("status", $this->status)
                ->with("job")->with("user")
                ->paginate(8);
        } else {
            $resumes = Resume::where('employer_id', Auth::user()->id)
                ->where("status", $this->status)
                ->with("job")->with("user")
                ->paginate(8);
        }

        return view('dashboard.view-all-resumes', ["resumes" => $resumes]);
    }
}
