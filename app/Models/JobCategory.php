<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use TCG\Voyager\Traits\Translatable;


class JobCategory extends Model
{
    use HasFactory;
    protected $table = 'job_category';
    use Translatable;
    protected $translatable = ['title'];
}
