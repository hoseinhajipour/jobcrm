<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Str;
use TCG\Voyager\Facades\Voyager;


class Job extends Model
{
    use HasFactory;

    protected $guarded = [];

    protected static function boot()
    {
        parent::boot();

        static::creating(function ($product) {
            $product->slug = Str::replace(" ", "_", $product->title);
        });

        static::updating(function ($product) {
            $product->slug = Str::replace(" ", "_", $product->title);
        });
    }



    public function user()
    {
        return $this->belongsTo(Voyager::modelClass('User'), 'user_id', 'id');
    }
}
