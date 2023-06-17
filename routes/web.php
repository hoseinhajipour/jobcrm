<?php

use App\Http\Controllers\ResumeController;
use Illuminate\Support\Facades\Route;

// Route::get('/', function () {
//     return view('welcome');
// });


Route::group(['prefix' => 'admin'], function () {
    Route::get('/view-resume-job', [ResumeController::class, 'index']);
    Voyager::routes();
});
