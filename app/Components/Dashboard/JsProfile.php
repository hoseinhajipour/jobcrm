<?php

namespace App\Components\Dashboard;

use App\Models\EducationHistory;
use App\Models\User;
use App\Models\WorkHistory;
use Illuminate\Support\Facades\Auth;
use Jantinnerezo\LivewireAlert\LivewireAlert;
use Livewire\Component;
use Livewire\WithFileUploads;

class JsProfile extends Component
{
    use LivewireAlert;
    use WithFileUploads;

    public $avatar;

    public $name, $email, $password, $password_confirmation;
    public $birth_date, $gender, $phone, $address;
    public $language, $o_a, $support_areas;
    public $self_introduction;
    public $agree = false;

    public $user;

    public $EducationHistories = [];
    public $WorkHistories = [];


    public function mount()
    {
        $this->user = User::where("id", Auth::user()->id)
            ->with('WorkHistories')
            ->with('EducationHistories')
            ->first();


        $this->WorkHistories = $this->user->WorkHistories;
        $this->EducationHistories = $this->user->EducationHistories;


        $this->name = $this->user->name;
        $this->email = $this->user->email;
        $this->password = $this->user->password;
        $this->password_confirmation = $this->user->password_confirmation;
        $this->birth_date = $this->user->birth_date;
        $this->gender = $this->user->gender;
        $this->phone = $this->user->phone;
        $this->address = $this->user->address;
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

    public function render()
    {
        return view('dashboard.js-profile');
    }

    public function update()
    {
        /*
        $this->validate();

        if (!$this->honeyPasses()) {
            return null;
        }
*/
        $this->user->update([
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
            //  'password' => bcrypt($this->password),
        ]);
        if ($this->avatar) {
            $path = $this->avatar->store('avatars', 'public');
            $this->user->avatar = $path;
            $this->user->save();
        }

        foreach ($this->EducationHistories as $EducationHistory) {
            $EducationHistory->save();
        }
        foreach ($this->WorkHistories as $WorkHistory) {
            $WorkHistory->save();
        }

        $this->alert('success', '성공한 것', ['position' => 'center']);
    }

    public function addEducationHistory()
    {
        $newEducationHistory = new EducationHistory();
        $newEducationHistory->user_id = Auth::user()->id;
        $newEducationHistory->save();

        $this->EducationHistories = EducationHistory::where("user_id", Auth::user()->id)->get();
    }

    public function RemoveEducationHistory($id)
    {
        EducationHistory::find($id)->delete();
        $this->EducationHistories = EducationHistory::where("user_id", Auth::user()->id)->get();
    }

    public function addWorkHistory()
    {
        $newWorkHistory = new WorkHistory();
        $newWorkHistory->user_id = Auth::user()->id;
        $newWorkHistory->save();

        $this->WorkHistories = WorkHistory::where("user_id", Auth::user()->id)->get();
    }

    public function RemoveWorkHistory($id)
    {
        WorkHistory::find($id)->delete();
        $this->WorkHistories = WorkHistory::where("user_id", Auth::user()->id)->get();
    }
}
