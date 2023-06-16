<?php

namespace App\Components\Pages;

use App\Models\Job;
use App\Models\JobCategory;
use App\Models\JobType;
use App\Models\Region;
use App\Models\User;
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

    public $employers = [];
    public $currentUser;


    public $categories = [];
    public $jobTypes = [];
    public $regions = [];

    public $category_id;
    public $jobtype_id;
    public $area_id;

    public function mount()
    {
        $this->employers = User::where("role_id", 3)->get();

        if (Auth::user()->role_id == 1) {
            $this->currentUser = $this->employers[0]->id;
        } else {
            $this->currentUser = Auth::user()->id;
        }
        $this->categories = JobCategory::all();
        $this->jobTypes = JobType::all();
        $this->regions = Region::all();
    }

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
            'user_id' => $this->currentUser,
            'category_id' => $this->category_id,
            'jobtype_id' => $this->jobtype_id,
            'area_id' => $this->area_id,
        ]);

        $Job->save();


    }

    public function render()
    {
        return view('pages.new-job');
    }
}
