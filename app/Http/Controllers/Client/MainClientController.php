<?php

namespace App\Http\Controllers\Client;

use App\Http\Controllers\Controller;
use App\Models\Menu;
use App\Models\Slider;
use Illuminate\Http\Request;

class MainClientController extends Controller
{
    //
    public function index()
    {
        $sliders = Slider::where('active', 1)->orderByDesc('sort_by')->get();
        $menus = Menu::where(['active' => 1, 'parent_id' => 0])->limit(3)->get();
        return view('client.main', [
            'title' => 'Shop quần áo khanh tùng',
            'sliders' => $sliders,
            'menus' => $menus,
        ]);
    }

}
