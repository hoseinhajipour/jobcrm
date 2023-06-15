<?php

namespace App\Components\Pages;

use App\Models\Exam;
use App\Models\Question;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Route;
use Livewire\Component;

class NewExam extends Component
{
    public $questions = [];
    public $questionValues = [];

    public function mount()
    {
        $this->questions = Question::all();
        foreach ($this->questions as $question) {
            $currentexam = Exam::where('user_id', Auth::user()->id)
                ->where('question_id', $question->id)
                ->first();
            if ($currentexam) {
                $this->questionValues[$question->id] = $currentexam->value;
            } else {
                $this->questionValues[$question->id] = 0;
            }

        }
    }

    public function route()
    {
        return Route::get('/profile/new-exam')
            ->name('NewExam')
            ->middleware('auth');
    }

    public function render()
    {
        return view('pages.new-exam');
    }

    public function SendNewExam()
    {
        foreach ($this->questions as $question) {
            $exam = Exam::where('user_id', Auth::user()->id)
                ->where('question_id', $question->id)
                ->first();

            if (!$exam) {
                $exam = new Exam();
                $exam->user_id = Auth::user()->id;
                $exam->question_id = $question->id;
            }
            $exam->value = $this->questionValues[$question->id];
            $exam->save();
        }
    }
}
