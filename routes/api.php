<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\UserController;
use App\Http\Controllers\AuthController;
use App\Http\Controllers\TestimonialController;
use App\Http\Controllers\BannerController;
use App\Http\Controllers\MessageController;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});

Route::post('/register',[UserController::class,'register']); // Singup URL 
Route::post('/login',[UserController::class,'login']); // lOGIN url
Route::get('/testimonials',[TestimonialController::class,'index']);
Route::post('/testimonial/store',[TestimonialController::class,'store']);
Route::get('/banners',[BannerController::class,'index']);
Route::post('/banner/store',[BannerController::class,'store']);
Route::post('/banner/update',[BannerController::class,'update']);
Route::get('/get/contact/list',[MessageController::class,'index']);
Route::post('/contact/sent',[MessageController::class,'store']);
Route::delete('/delete/contact/data/{contact}', [MessageController::class, 'destroy']);
Route::post('/subscribe',[MessageController::class,'subscribe']);