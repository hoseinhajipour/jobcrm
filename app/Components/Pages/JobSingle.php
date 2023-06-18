<?php

namespace App\Components\Pages;

use App\Models\Job;
use App\Models\Resume;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Route;
use Jantinnerezo\LivewireAlert\LivewireAlert;
use Livewire\Component;

class JobSingle extends Component
{
    use LivewireAlert;

    public $job;

    public function mount($id)
    {
        $this->job = Job::where("id", $id)
            ->with("user")
            ->with("WorkType")
            ->first();
    }

    public function route()
    {
        return Route::get('/job/{id}')
            ->name('job');
    }

    public function render()
    {
        return view('pages.job-single');
    }

    public function SendResume()
    {
        $resume = Resume::where('user_id', Auth::user()->id)
            ->where('job_id', $this->job->id)
            ->first();
        if (!$resume) {
            $resume = new Resume();
            $resume->user_id = Auth::user()->id;
            $resume->job_id = $this->job->id;
            $resume->status = "pending";
            $resume->save();

            $this->alert('success', '귀하의 이력서가 성공적으로 전송되었습니다', ['position' => 'center']);
        } else {
            $this->alert('warning', '이력서가 이미 제출되었습니다.', ['position' => 'center']);
        }
        return redirect()->route('MyResumes', ["status" => "pending"]);
    }
}
