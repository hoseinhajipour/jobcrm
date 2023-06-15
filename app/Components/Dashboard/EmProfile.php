<?php

namespace App\Components\Dashboard;

use Illuminate\Support\Facades\Auth;
use Livewire\Component;
use Livewire\WithFileUploads;

class EmProfile extends Component
{
    use WithFileUploads;

    public $avatar;
    public $name, $email, $password, $password_confirmation;
    public $establishment_date, $representative_name;
    public $business_number, $contact_person_number;
    public $contact_person_name, $number_of_employees;
    public $business_information, $sectors, $company_website_address;
    public $company_type, $take, $capital, $Listed_or_not;
    public $address;

    public $agree = false;

    public $user;

    public function mount()
    {
        $this->user = Auth::user();
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
        return view('dashboard.em-profile');
    }


    public function register()
    {
        $this->validate();

        if (!$this->honeyPasses()) {
            return null;
        }

        $this->user->update([
            'name' => $this->name,
            'email' => $this->email,
            'establishment_date' => $this->establishment_date,
            'representative_name' => $this->representative_name,
            'business_number' => $this->business_number,
            'contact_person_number' => $this->contact_person_number,
            'contact_person_name' => $this->contact_person_name,
            'number_of_employees' => $this->number_of_employees,
            'business_information' => $this->business_information,
            'sectors' => $this->sectors,
            'company_website_address' => $this->company_website_address,
            'company_type' => $this->company_type,
            'take' => $this->take,
            'capital' => $this->capital,
            'Listed_or_not' => $this->Listed_or_not,
            'address' => $this->address,
            'password' => bcrypt($this->password),
        ]);

        if ($this->avatar) {
            $path = $this->avatar->store('avatars');
            $this->user->avatar = $path;
            $this->user->save();
        }
    }
}
