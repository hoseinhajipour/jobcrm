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
        return Route::get('/profile/new-job')
            ->name('NewJob')
            ->middleware('auth');
    }

    public function newJob()
    {
        $Job = Job::create([
            'title' => $this->title,
            'areas_of_recruitment' => $this->areasOfRecruitment,
            'type_of_employment' => $this->typeOfEmployment,
            'number_of_recruits' => $this->numberOfRecruits,
            'gender' => $this->gender,
            'age' => $this->age,
            'education' => $this->education,
            'day_of_the_week' => $this->dayOfWeek,
            'working_time' => $this->workingTime,
            'closing_time' => $this->closingTime,
            'break_time' => $this->breakTime,
            'preferential_conditions' => $this->preferentialConditions,
            'salary' => $this->salary,
            'damdam_place_name' => $this->damdamPlaceName,
            'meal_included' => $this->mealIncluded,
            'negotiable' => $this->negotiable,
            'probation_period' => $this->probationPeriod,
            'performance_pay' => $this->performancePay,
            'contact' => $this->contact,
            'fax_number' => $this->faxNumber,
            'email' => $this->email,
            'address' => $this->address,
            'description' => $this->description,
            'agreed' => true,
            'user_id' => Auth::user()->id,
        ]);

        $Job->save();


    }

    public function render()
    {
        return view('pages.new-job');
    }
}
