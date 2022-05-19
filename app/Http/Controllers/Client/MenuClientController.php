<?php

namespace App\Http\Controllers\Client;

use App\Http\Services\Menu\MenuService;
use Illuminate\Http\Request;

class MenuClientController
{
    protected $_menuService;

    public function __construct(MenuService $menuService)
    {
        $this->_menuService = $menuService;
    }

    // $id, $slug trung voi route se hien thi duoc
    public function index(Request $request, $id, $slug)
    {
        $menu     = $this->_menuService->getID($id);
        $products = $this->_menuService->productOfMenu($menu, $request);
        $menus = $this->_menuService->getMenu();
        return view('client.menu.menu', [
            'title'    => $menu->name,
            'products' => $products,
            'menus' => $menus
        ]);
    }

    public function footer()
    {
        $menu = $this->_menuService->getMenu();
        return view('client.home', [
            'menus' => $menu
        ]);
    }
}
