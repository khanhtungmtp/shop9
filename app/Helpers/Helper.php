<?php

namespace App\Helpers;

class Helper
{
    // đệ quy
    public static function Menu($menus, $parent_id = 0, $char = '')
    {
        $html = '';
        foreach ($menus as $key => $menu)
        {
            if ($menu->parent_id == $parent_id)
            {
                $html .= '
                <tr>
                    <td>'.$menu->id.'</td>
                    <td>'.$char.$menu->name.'</td>
                    <td>'.$menu->active.'</td>
                    <td>'.$menu->updated_at.'</td>
                </tr>
                ';
                // mõi lần đệ quy  Xóa chuyên mục đã lặp cho nhẹ
                unset($menus[$key]);
                // tìm menu con
                $html.= self::Menu($menus,$menu->id, '--');
            }
        }
        return $html;
    }
}
