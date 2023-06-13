<?php

namespace App\Components\Auth;

use App\Models\User;
use App\Providers\RouteServiceProvider;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Route;
use Livewire\Component;
use Livewire\WithFileUploads;

class SingupJs extends Component
{
    use WithFileUploads;

    public $avatar;

    public $name, $email, $password, $password_confirmation;
    public $birth_date, $gender, $phone, $address;
    public $education, $school, $school_department, $admission_date, $graduation_date;
    public $salary, $company_name, $company_department, $rank;
    public $employment_start, $employment_end;
    public $language, $o_a, $support_areas;

    public $agree = false;

    public function rules()
    {
        return [
            'name' => ['required'],
            'email' => ['required', 'email', 'unique:users'],
            'password' => ['required', 'confirmed'],
        ];
    }

    public function route()
    {
        return Route::get('/singup-js')
            ->name('SingupJs')
            ->middleware('guest');
    }

    public function render()
    {
        return view('auth.singup-js');
    }

    public function register()
    {
        $this->validate();

        if (!$this->honeyPasses()) {
            return null;
        }

        $user = User::create([
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
            'password' => bcrypt($this->password),
        ]);
        if ($this->avatar) {
            $path = $this->avatar->store('avatars');
            $user->avatar = $path;
            $user->save();
        }
        Auth::login($user, true);

        return redirect()->to(RouteServiceProvider::profile);
    }
}
