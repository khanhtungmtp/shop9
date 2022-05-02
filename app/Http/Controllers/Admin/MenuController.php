<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Http\Requests\Menu\CreateFormRequest;
use App\Http\Services\Menu\MenuService;

class MenuController extends Controller
{
    protected $menuService;
    public function __construct(MenuService $menuService)
    {
        $this->menuService = $menuService;
    }

    // hien thi template add
    public function create()
    {
        return view('admin.menu.add',[
            'title' => 'Thêm mới danh mục',
            'menus' => $this->menuService->get()
        ]);
    }
    // insert
    public function store(CreateFormRequest $request)
    {
        $result = $this->menuService->create($request);
        return redirect()->back();
    }
    // list
    public function list()
    {
        return view('admin.menu.list',[
            'title' => 'Danh sách menu',
            'menus' => $this->menuService->get()
        ]);
    }
}
