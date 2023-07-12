<?php


use App\Http\Controllers\blogController;
use App\Http\Controllers\homeController;
use App\Http\Controllers\aboutController;
use App\Http\Controllers\quoteController;
use App\Http\Controllers\contactController;
use App\Http\Controllers\projectController;
use App\Http\Controllers\serviceController;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

//page Route
Route::get('/', [homeController::class, 'homepage']);
Route::get('/service', [serviceController::class, 'servicepage']);
Route::get('/project', [projectController::class, 'projectpage']);
Route::get('/blog', [blogController::class, 'blogpage']);
Route::get('/contact', [contactController::class, 'contactpage']);
Route::get('/quote', [quoteController::class, 'quotepage']);



//Ajaxx Call Route

Route::get('/bannerData', [homeController::class, 'bannerData']);
Route::get('/abouteData', [homeController::class, 'aboutData']);
Route::get('/skillData', [homeController::class, 'skillData']);
Route::get('/serviceData', [homeController::class, 'serviceData']);
Route::get('/projectData', [homeController::class, 'projectData']);
Route::get('/blogData', [blogController::class, 'blogData']);
Route::get('/serviceData', [homeController::class, 'serviceData']);

Route::post('/quoteRequest', [quoteController::class, 'quoteRequest']);
Route::post('/contactRequest', [contactController::class, 'contactRequest']);
