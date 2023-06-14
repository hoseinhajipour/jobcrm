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


    public $agree = false;


    public function route()
    {
        return Route::get('/new-job')
            ->name('NewJob')
            ->middleware('auth');
    }

    public function newJob()
    {
        $Job = Job::create([
            'title' => $this->title,
            'areasOfRecruitment' => $this->areasOfRecruitment,
            'typeOfEmployment' => $this->typeOfEmployment,
            'numberOfRecruits' => $this->numberOfRecruits,
            'gender' => $this->gender,
            'age' => $this->age,
            'education' => $this->education,
            'dayOfWeek' => $this->dayOfWeek,
            'workingTime' => $this->workingTime,
            'closingTime' => $this->closingTime,
            'breakTime' => $this->breakTime,
            'preferentialConditions' => $this->preferentialConditions,
            'salary' => $this->salary,
            'damdamPlaceName' => $this->damdamPlaceName,
            'mealIncluded' => $this->mealIncluded,
            'negotiable' => $this->negotiable,
            'probationPeriod' => $this->probationPeriod,
            'performancePay' => $this->performancePay,
            'contact' => $this->contact,
            'faxNumber' => $this->faxNumber,
            'email' => $this->email,
            'address' => $this->address,
            'description' => $this->description,
            'user_id' => Auth::user()->id,
        ]);

        $Job->save();


    }

    public function render()
    {
        return view('pages.new-job');
    }
}
