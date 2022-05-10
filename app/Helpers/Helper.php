<?php

namespace App\Helpers;

use Illuminate\Support\Str;

class Helper
{
    // đệ quy menu admin
    public static function Menu($menus, $parent_id = 0, $char = ''): string
    {
        $html = '';
        foreach ($menus as $key => $menu)
        {
            if ($menu->parent_id == $parent_id)
            {
                $html .= '
                <tr>
                    <td>' . $menu->id . '</td>
                    <td>' . $char . $menu->name . '</td>
                    <td>' . self::Active($menu->active) . '</td>
                    <td>' . $menu->updated_at . '</td>
                    <td>
                       <a href="/admin/menu/edit/' . $menu->id . '" class="btn btn-primary btn-sm">
                       <i class="fas fa-edit"></i></a>
                       <a href="#" onclick="removeRow(' . $menu->id . ',\'/admin/menu/destroy\')" class="btn btn-danger btn-sm">
                       <i class="fas fa-trash"></i></a>
                    </td>
                </tr>
                ';
                // mõi lần đệ quy  Xóa chuyên mục đã lặp cho nhẹ
                unset($menus[$key]);
                // tìm menu con
                $html .= self::Menu($menus, $menu->id, '--');
            }
        }
        return $html;
    }

    public static function Active($active): string
    {
        return $active == 0 ? '<span class="btn btn-danger btn-xs">Không</span>' : '<span class="btn btn-success btn-xs">Có</span>';
    }

    public static function menuClient($menus, $parent_id = 0): string
    {
        $html = '';
        foreach ($menus as $key => $menu)
        {
            if ($menu->parent_id == $parent_id)
            {
                $html .= '
                    <li>
                        <a href="/danh-muc/' . $menu->id . '/' . Str::slug($menu->name, '-') . '.html">
                            ' . $menu->name . '
                        </a>';

                unset($menus[$key]);

                if (self::isChild($menus, $menu->id))
                {
                    $html .= '<ul class="sub-menu">';
                    $html .= self::menuClient($menus, $menu->id);
                    $html .= '</ul>';
                }

                $html .= '</li>';
            }
        }

        return $html;
    }

    public static function isChild($menus, $id): bool
    {
        foreach ($menus as $menu)
        {
            if ($menu->parent_id == $id)
            {
                return true;
            }
        }
        return false;
    }

}
