<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Notifications\Notifiable;
use TCG\Voyager\Models\Role;

class User extends \TCG\Voyager\Models\User
{
    use HasFactory, Notifiable;

    protected $guarded = [];
    protected $hidden = ['password', 'remember_token'];
    protected $casts = ['email_verified_at' => 'datetime'];


}
