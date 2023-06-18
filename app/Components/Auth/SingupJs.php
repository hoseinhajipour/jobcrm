<?php

namespace App\Components\Auth;

use App\Models\EducationHistory;
use App\Models\User;
use App\Models\WorkHistory;
use App\Providers\RouteServiceProvider;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Route;
use Illuminate\Validation\ValidationException;
use Jantinnerezo\LivewireAlert\LivewireAlert;
use Livewire\Component;
use Livewire\WithFileUploads;
use Lukeraymonddowning\Honey\Traits\WithHoney;

class SingupJs extends Component
{
    use WithFileUploads;
    use WithHoney;
    use LivewireAlert;

    public $avatar;

    public $name, $email, $password, $password_confirmation;
    public $birth_date, $gender, $phone, $address;
    public $education, $school, $school_department, $admission_date, $graduation_date;
    public $salary, $company_name, $company_department, $rank;
    public $employment_start, $employment_end;
    public $language, $o_a, $support_areas;
    public $self_introduction;
    public $agree = false;

    public $EducationHistories = [];
    public $WorkHistories = [];

    public function mount()
    {
        $this->addEducationHistory();
        $this->addWorkHistory();
    }

    public function rules()
    {
        return [
            'name' => ['required'],
            'email' => ['required', 'email', 'unique:users'],
            'password' => ['required', 'confirmed'],

            'EducationHistories.*.education' => '',
            'EducationHistories.*.school' => '',
            'EducationHistories.*.school_department' => '',
            'EducationHistories.*.admission_date' => '',
            'EducationHistories.*.graduation_date' => '',

            'WorkHistories.*.salary' => '',
            'WorkHistories.*.company_name' => '',
            'WorkHistories.*.company_department' => '',
            'WorkHistories.*.rank' => '',
            'WorkHistories.*.employment_start' => '',
            'WorkHistories.*.employment_end' => '',
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
        try {
            $this->validate();
            /*
                    if (!$this->honeyPasses()) {
                        return null;
                    }
            */

            $user = User::create([
                'role_id' => 4,
                'name' => $this->name,
                'email' => $this->email,
                'birth_date' => $this->birth_date,
                'gender' => $this->gender,
                'phone' => $this->phone,
                'address' => $this->address,
                'language' => $this->language,
                'o_a' => $this->o_a,
                'support_areas' => $this->support_areas,
                'self_introduction' => $this->self_introduction,
                'password' => bcrypt($this->password),
            ]);
            if ($this->avatar) {
                $path = $this->avatar->store('avatars');
                $user->avatar = $path;
            }
            $user->save();

            if ($user->id) {
                foreach ($this->EducationHistories as $EducationHistory) {
                    $EducationHistory->user_id = $user->id;
                    $EducationHistory->save();
                }
                foreach ($this->WorkHistories as $WorkHistory) {
                    $WorkHistory->user_id = $user->id;
                    $WorkHistory->save();
                }
            }


            Auth::login($user, true);

            return redirect()->to(RouteServiceProvider::profile);
        } catch (ValidationException $exception) {
            $this->alert('error', $exception->validator->errors(), ['position' => 'center']);
        }
    }


    public function addEducationHistory()
    {
        $newEducationHistory = new EducationHistory();
        $this->EducationHistories [] = $newEducationHistory;
    }

    public function RemoveEducationHistory($index)
    {

        unset($this->EducationHistories[$index]);
    }

    public function addWorkHistory()
    {
        $newWorkHistory = new WorkHistory();

        $this->WorkHistories [] = $newWorkHistory;
    }

    public function RemoveWorkHistory($index)
    {
        unset($this->WorkHistories[$index]);
    }
}
