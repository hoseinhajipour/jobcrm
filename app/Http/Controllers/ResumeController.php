<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class ResumeController extends Controller
{
    public function index()
    {
        return view('/vendor/voyager/ResumesJob/view');
    }
}
