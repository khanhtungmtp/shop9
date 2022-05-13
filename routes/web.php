<?php

use App\Http\Controllers\Admin\MainController;
use App\Http\Controllers\Admin\MenuController;
use App\Http\Controllers\Admin\ProductController;
use App\Http\Controllers\Admin\SliderController;
use App\Http\Controllers\Admin\UploadController;
use App\Http\Controllers\Admin\User\LoginController;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Client\MainClientController;
use App\Http\Controllers\Client\MenuClientController;
use App\Http\Controllers\Client\ProductClientController;

// client
Route::get('/', [MainClientController::class, 'index']);
Route::post('/load/product', [MainClientController::class, 'loadMoreProduct']);
Route::get('danh-muc/{id}/{slug}.html', [MenuClientController::class, 'index']);
Route::get('san-pham/{id}/{slug}.html', [ProductClientController::class, 'index']);


Route::get('admin/users/login', [LoginController::class, 'index'])->name('login');
Route::post('admin/users/login/store', [LoginController::class, 'store']);
// dang nhap moi vao duoc
Route::middleware('auth')->group(function ()
{
    //admin
    Route::prefix('admin')->group(function ()
    {
        Route::get('/', [MainController::class, 'index'])->name('admin');
        Route::get('/main', [MainController::class, 'index']);

        // menu
        Route::prefix('menu')->group(function ()
        {
            Route::get('/add', [MenuController::class, 'create']);
            Route::post('/add', [MenuController::class, 'store']);
            Route::get('/edit/{menu}', [MenuController::class, 'show']);
            Route::post('/edit/{menu}', [MenuController::class, 'update']);
            Route::get('/list', [MenuController::class, 'list'])->name('listMenu');
            Route::delete('destroy', [MenuController::class, 'destroy']);
        });

        // product
        Route::prefix('product')->group(function ()
        {
            Route::get('/add', [ProductController::class, 'create']);
            Route::post('/add', [ProductController::class, 'store']);
            Route::get('/edit/{product}', [ProductController::class, 'show']);
            Route::post('/edit/{product}', [ProductController::class, 'update']);
            Route::delete('destroy', [ProductController::class, 'destroy']);
            Route::get('/list', [ProductController::class, 'index'])->name('listProduct');
        });

        // slider
        Route::prefix('slider')->group(function ()
        {
            Route::get('add', [SliderController::class, 'index']);
            Route::post('add', [SliderController::class, 'store']);
            Route::get('edit/{slider}', [SliderController::class, 'show']);
            Route::post('edit/{slider}', [SliderController::class, 'update']);
            Route::delete('destroy', [SliderController::class, 'destroy']);
            Route::get('list', [SliderController::class, 'list'])->name('listSlider');
        });

        // upload
        Route::post('upload/services', [UploadController::class, 'store']);
    });
});
