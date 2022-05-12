<?php

namespace App\Http\Controllers\Client;

use App\Http\Controllers\Controller;
use App\Http\Services\Menu\MenuService;
use App\Http\Services\Product\ProductService;
use App\Http\Services\Slider\SliderService;
use App\Models\Menu;
use App\Models\Product;
use App\Models\Slider;
use Illuminate\Http\JsonResponse;
use Illuminate\Http\Request;

class MainClientController extends Controller
{
    //
    protected $_productService;
    protected $_menuService;
    protected $_sliderService;

    public function __construct(ProductService $productService, MenuService $menuService, SliderService $sliderService)
    {
        $this->_productService = $productService;
        $this->_sliderService  = $sliderService;
        $this->_menuService    = $menuService;
    }

    public function index()
    {
        $sliders  = $this->_sliderService->getSlide();
        $menus    = $this->_menuService->getMenu();
        $products = $this->_productService->getProduct();
        return view('client.home', [
            'title'    => 'Shop quần áo khanh tùng',
            'sliders'  => $sliders,
            'menus'    => $menus,
            'products' => $products,
        ]);
    }

    public function loadMoreProduct(Request $request):JsonResponse
    {
        $page   = $request->input('page');
        $result = $this->_productService->getProduct($page);
        if (count($result) != 0)
        {
            $html = view('client.product.list', ['products' => $result])->render();
            return response()->json([
                'html' => $html
            ]);
        }
        return response()->json([
            'html' => ''
        ]);
    }

}
