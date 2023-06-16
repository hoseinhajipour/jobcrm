<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Notifications\Notifiable;

class User extends \TCG\Voyager\Models\User
{
    use HasFactory, Notifiable;

    protected $guarded = [];
    protected $hidden = ['password', 'remember_token'];
    protected $casts = ['email_verified_at' => 'datetime'];

    public function WorkHistories()
    {
        return $this->hasMany(WorkHistory::class, "user_id");
    }

    public function EducationHistories()
    {
        return $this->hasMany(EducationHistory::class, "user_id");
    }
}
