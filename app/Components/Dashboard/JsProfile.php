<?php

namespace App\Components\Dashboard;

use Illuminate\Support\Facades\Auth;
use Livewire\Component;
use Livewire\WithFileUploads;

class JsProfile extends Component
{
    use WithFileUploads;

    public $avatar;

    public $name, $email, $password, $password_confirmation;
    public $birth_date, $gender, $phone, $address;
    public $education, $school, $school_department, $admission_date, $graduation_date;
    public $salary, $company_name, $company_department, $rank;
    public $employment_start, $employment_end;
    public $language, $o_a, $support_areas;
    public $self_introduction;
    public $agree = false;

    public $user;

    public function mount()
    {
        $this->user = Auth::user();

        $this->name = $this->user->name;
        $this->email = $this->user->email;
        $this->password = $this->user->password;
        $this->password_confirmation = $this->user->password_confirmation;
        $this->birth_date = $this->user->birth_date;
        $this->gender = $this->user->gender;
        $this->phone = $this->user->phone;
        $this->address = $this->user->address;
        $this->education = $this->user->education;
        $this->school = $this->user->school;
        $this->school_department = $this->user->school_department;
        $this->admission_date = $this->user->admission_date;
        $this->graduation_date = $this->user->graduation_date;
        $this->salary = $this->user->salary;
        $this->company_name = $this->user->company_name;
        $this->company_department = $this->user->company_department;
        $this->rank = $this->user->rank;
        $this->employment_start = $this->user->employment_start;
        $this->employment_end = $this->user->employment_end;
        $this->language = $this->user->language;
        $this->o_a = $this->user->o_a;
        $this->support_areas = $this->user->support_areas;
        $this->self_introduction = $this->user->self_introduction;


    }

    public function rules()
    {
        return [
            'name' => ['required'],
            'email' => ['required', 'email', 'unique:users'],
            'password' => ['required', 'confirmed'],
        ];
    }

    public function render()
    {
        return view('dashboard.js-profile');
    }

    public function update()
    {
        $this->validate();

        if (!$this->honeyPasses()) {
            return null;
        }

        $this->user->update([
            'name' => $this->name,
            'email' => $this->email,
            'birth_date' => $this->birth_date,
            'gender' => $this->gender,
            'phone' => $this->phone,
            'address' => $this->address,
            'education' => $this->education,
            'school' => $this->school,
            'school_department' => $this->school_department,
            'admission_date' => $this->admission_date,
            'graduation_date' => $this->graduation_date,
            'salary' => $this->salary,
            'company_name' => $this->company_name,
            'company_department' => $this->company_department,
            'rank' => $this->rank,
            'employment_start' => $this->employment_start,
            'employment_end' => $this->employment_end,
            'language' => $this->language,
            'o_a' => $this->o_a,
            'support_areas' => $this->support_areas,
            'self_introduction' => $this->self_introduction,
            'password' => bcrypt($this->password),
        ]);
        if ($this->avatar) {
            $path = $this->avatar->store('avatars');
            $this->user->avatar = $path;
            $this->user->save();
        }

    }
}
