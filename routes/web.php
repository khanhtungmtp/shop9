<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Admin\User\LoginController;
use \App\Http\Controllers\Admin\MainController;
use App\Http\Controllers\Admin\MenuController;

Route::get('/', function ()
{
    return view('welcome');
});

Route::get('admin/users/login', [LoginController::class, 'index'])->name('login');
Route::post('admin/users/login/store', [LoginController::class, 'store']);

// dang nhap moi vao duoc
Route::middleware('auth')->group(function ()
{
    Route::prefix('admin')->group(function ()
    {
        Route::get('/', [MainController::class, 'index'])->name('admin');
        Route::get('/main', [MainController::class, 'index']);
        Route::prefix('menu')->group(function (){
            Route::get('/add',[MenuController::class, 'create']);
            Route::post('/add',[MenuController::class, 'store']);
            Route::get('/list',[MenuController::class, 'list']);
        });
    });
});
