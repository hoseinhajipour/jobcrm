<?php

namespace App\Components\Pages;

use App\Models\Job;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Route;
use Livewire\Component;

class NewJob extends Component
{

    public $title;
    public $areasOfRecruitment;
    public $typeOfEmployment;
    public $numberOfRecruits;
    public $gender;
    public $age;
    public $education;
    public $dayOfWeek;
    public $workingTime;
    public $closingTime;
    public $breakTime;
    public $preferentialConditions;
    public $salary;
    public $damdamPlaceName;
    public $mealIncluded;
    public $negotiable;
    public $probationPeriod;
    public $performancePay;
    public $contact;
    public $faxNumber;
    public $email;
    public $address;
    public $description;
    public $agreed;


    public function route()
    {
        return Route::get('/new-job')
            ->name('NewJob')
            ->middleware('auth');
    }

    public function newJob()
    {
        $Job = new Job();
        $Job->user_id = Auth::user()->id;
        $Job->save();
    }

    public function render()
    {
        return view('pages.new-job');
    }
}
