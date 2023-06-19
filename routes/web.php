<?php

use App\Http\Controllers\ResumeController;
use Illuminate\Support\Facades\Route;

// Route::get('/', function () {
//     return view('welcome');
// });

Route::get('/clear', function () {
    Artisan::call('route:cache');
    Artisan::call('config:cache');
    Artisan::call('cache:clear');
    Artisan::call('view:clear');
    return "Web route cache has been cleared.";
});


Route::group(['prefix' => 'admin'], function () {
    Route::get('/view-resume-job', [ResumeController::class, 'index']);
    Voyager::routes();
});
