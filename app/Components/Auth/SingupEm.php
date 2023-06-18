<?php

namespace App\Components\Auth;

use App\Models\User;
use App\Providers\RouteServiceProvider;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Route;
use Illuminate\Validation\ValidationException;
use Jantinnerezo\LivewireAlert\LivewireAlert;
use Livewire\Component;
use Livewire\WithFileUploads;
use Lukeraymonddowning\Honey\Traits\WithHoney;

class SingupEm extends Component
{
    use WithFileUploads;
    use WithHoney;
    use LivewireAlert;

    public $avatar;
    public $name, $email, $password, $password_confirmation;
    public $establishment_date, $representative_name;
    public $business_number, $contact_person_number;
    public $contact_person_name, $number_of_employees;
    public $business_information, $sectors, $company_website_address;
    public $company_type, $take, $capital, $Listed_or_not;
    public $address;

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
        return Route::get('/singup-em')
            ->name('SingupEm')
            ->middleware('guest');
    }

    public function render()
    {
        return view('auth.singup-em');
    }

    public function register()
    {
        try {
            $this->validate();

            /*
            if ($validator->fails()) {
                dd($validator->errors());
            }
            */
            /*
            if (!$this->honeyPasses()) {
                return null;
            }
    */
            $user = User::create([
                'role_id' => 3,
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
                $user->avatar = $path;
            }
            $user->save();
            Auth::login($user, true);

            return redirect()->to(RouteServiceProvider::profile);
        } catch (ValidationException $exception) {
            $this->alert('error', $exception->validator->errors(), ['position' => 'center']);
        }
    }
}
