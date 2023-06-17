<?php

namespace App\Components\Dashboard;

use App\Models\Resume;
use App\Models\User;
use Illuminate\Support\Facades\Route;
use Jantinnerezo\LivewireAlert\LivewireAlert;
use Livewire\Component;

class ViewUserReume extends Component
{
    use LivewireAlert;

    public $resume;
    public $status;

    public $user;
    public $EducationHistories = [];
    public $WorkHistories = [];

    public function mount($id)
    {
        $this->resume = Resume::where("id", $id)->with("user")->first();
        $this->user=User::where("id",$this->resume->user_id)
            ->with('WorkHistories')
            ->with('EducationHistories')
            ->first();
        $this->WorkHistories = $this->user->WorkHistories;
        $this->EducationHistories = $this->user->EducationHistories;

        $this->status = $this->resume->status;
    }

    public function route()
    {
        return Route::get('/profile/view-resume/{id}')
            ->name('ViewResume');
    }

    public function render()
    {
        return view('dashboard.view-user-reume');
    }

    public function updateStatus()
    {

        $this->resume->status = $this->status;
        $this->resume->save();
        $this->alert('success', '성공', ['position' => 'center']);
    }
}
