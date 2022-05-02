<?php

namespace App\Http\Services\Menu;

use App\Models\Menu;
use Illuminate\Support\Facades\Session;

class MenuService
{
    // tach phan xu ly qua ben services
    public function create($request)
    {
        try
        {
            Menu::create([
                'name'       => (string)$request->input('name'),
                'parent_id'   => (string)$request->input('parent_id'),
                'description' => (string)$request->input('description'),
                'content'     => (string)$request->input('content'),
                'active'      => (string)$request->input('active')
            ]);
            Session::flash('success', 'Tạo Danh Mục Thành Công');

        } catch (\Exception $err)
        {
            Session::flash('error', $err->getMessage());
            return false;
        }
    }

    /*
     * mặc định lấy all menu
     * nếu truyền 0 chỉ lấy menu cha
     * */
    public function get($parent_id = 1)
    {
        return Menu::when($parent_id ==0, function ($query) use ($parent_id){
            $query->where('parent_id', $parent_id);
        })->get();
    }

    public function update($menu, $request): bool
    {

        if ($menu->id != $request->input('parent_id')){
            $menu->parent_id = (int) $request->input('parent_id');
        }
        $menu->name = (string) $request->input('name');
        $menu->description = (string) $request->input('description');
        $menu->content = (string) $request->input('content');
        $menu->active = (int) $request->input('active');
        $menu->update();
        Session::flash('success', 'Cập nhập danh mục thành công');
        return true;
    }

    public function destroy($request)
    {
        $id = (int) $request->input('id');
        $result = Menu::where('id', $id)->first();
        // tim danh muc con de xoa
        if ($result){
            return Menu::where('id', $id)->orWhere('parent_id', $id)->delete();
        }
        return false;
    }
}
