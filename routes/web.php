<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\CustomerController;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

// Route::get('/', function () {
//     return view('welcome');
// });
Route::get('/', [App\Http\Controllers\FrontendController::class, 'index']);


Auth::routes();

Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');

Route::get('/get/customer/list', 
        [CustomerController::class, 'getCustomerList'])->name('customer.list');

Route::post('/get/individual/customer/details',
        [CustomerController::class, 'getCustomerDetails'])->name('customer.details');

Route::post('/update/customer/data',        
    [CustomerController::class, 'updateCustomerData']);

Route::delete('/delete/customer/data/{customer}',
    [CustomerController::class, 'destroy']);

Route::post('/store/customer/data',
    [CustomerController::class, 'store']);
