<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use TCG\Voyager\Facades\Voyager;


class Resume extends Model
{
    use HasFactory;

    protected static function boot()
    {
        parent::boot();

        static::creating(function ($resume) {
            $resume->employer_id = $resume->job->user_id;
        });

        static::updating(function ($resume) {
            $resume->employer_id = $resume->job->user_id;
        });
    }


    public function job()
    {
        return $this->belongsTo(Job::class, 'job_id', 'id');
    }

    public function user()
    {
        return $this->belongsTo(Voyager::modelClass('User'), 'user_id', 'id');
    }
}
