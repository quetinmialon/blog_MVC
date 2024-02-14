<?php

use App\Controllers\HelloController;
use App\Controllers\PostController;
use App\Controllers\RegisterController;
use App\Controllers\LoginController;
use App\Controllers\HomeController;
use App\Controllers\AdminController;
use App\Controllers\LogoutController;
use MVC\Route;
use App\Middlewares\Auth;
use App\Middlewares\Guest;
use App\Middlewares\Admin;
return [
    Route::get('/hello/{id}', [HelloController::class, 'hello']),
    Route::get('/', [PostController::class,'index']),
    Route::get('/articles/{slug}',[PostController::class,"show"]),
    Route::get('/inscription',[RegisterController::class,"showRegisterForm"])->middleware(Guest::class),
    Route::get('/connexion',[LoginController::class,"showLoginForm"])->middleware(Guest::class),
    Route::get('/compte',[HomeController::class,"index"])->middleware(Auth::class),
    Route::get('/compte/admin',[AdminController::class,"index"])->middleware([Auth::class,Admin::class]),
    Route::post('/inscription',[RegisterController::class,"subscribe"])->middleware(Guest::class),
    Route::post('/connexion',[LoginController::class,"login"])->middleware(Guest::class),
    Route::post('/deconnexion',[LogoutController::class,"logout"])->middleware(Auth::class),
    Route::post('/articles/{slug}/comment',[PostController::class,"comment"])->middleware(Auth::class),
];
