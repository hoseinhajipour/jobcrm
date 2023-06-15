<?php

namespace App\Components\Dashboard;

use App\Models\Resume;
use Illuminate\Support\Facades\Route;
use Jantinnerezo\LivewireAlert\LivewireAlert;
use Livewire\Component;

class ViewUserReume extends Component
{
    use LivewireAlert;

    public $resume;
    public $status;

    public function mount($id)
    {
        $this->resume = Resume::where("id", $id)->with("user")->first();
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
