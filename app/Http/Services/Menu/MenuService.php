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
}
