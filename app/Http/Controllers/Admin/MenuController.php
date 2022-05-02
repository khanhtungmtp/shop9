<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Http\Requests\Menu\CreateFormRequest;
use App\Http\Services\Menu\MenuService;
use App\Models\Menu;
use Illuminate\Http\JsonResponse;
use Illuminate\Http\Request;


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
        return view('admin.menu.add', [
            'title' => 'Thêm mới danh mục',
            'menus' => $this->menuService->get()
        ]);
    }

    // insert
    public function store(CreateFormRequest $request)
    {
        $this->menuService->create($request);
        return redirect()->back();
    }

    // list
    public function list()
    {
        return view('admin.menu.list', [
            'title' => 'Danh sách menu',
            'menus' => $this->menuService->get()
        ]);
    }

    public function show(Menu $menu)
    {
        return view('admin.menu.edit', [
            'title' => 'Sữa danh mục menu',
            'menu'  => $menu,
            'menus' => $this->menuService->get()
        ]);
    }

    public function update(Menu $menu, CreateFormRequest $request)
    {
        $this->menuService->update($menu, $request);
        return redirect()->route('listMenu');
    }

    public function destroy(Request $request): JsonResponse
    {
        $result = $this->menuService->destroy($request);
        if ($result)
        {
            return response()->json([
                'error'   => false,
                'message' => 'Xóa thành công danh mục'
            ]);
        }
        return response()->json([
            'error' => true
        ]);
    }
}
