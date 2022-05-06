<?php

namespace App\Http\Services\Product;

use App\Models\Menu;
use App\Models\Product;
use Illuminate\Support\Facades\Session;
use Illuminate\Support\Facades\Storage;

class ProductService
{
    public function getMenu()
    {
        return Menu::where('active', 1)->get();
    }

    // lay san pham, menu la class
    public function get():Object
    {
        return Product::with('menu')->orderByDesc('id')->paginate(15);
    }

    // insert
    public function store($request): bool
    {
        $isValidPriceSale = $this->isValidPrice($request);
        if ($isValidPriceSale === false)
            return false;
        try
        {
            $request->except('_token');
            Product::create($request->all());
            Session::flash('success', 'Thêm sản phẩm thành công');
        } catch (\Exception $err)
        {
            Session::flash('error', 'Thêm sản phẩm thất bại');
            \Log::info($err->getMessage());
            return false;
        }
        return true;
    }

    public function update($request, $product):bool
    {
        $isValidPrice = $this->isValidPrice($request);
        if ($isValidPrice === false) return false;
        try
        {
            $product->fill($request->input());
            $product->save();
            Session::flash('success', 'Cập nhập sản phẩm thành công');
        }catch (\Exception $err){
            Session::flash('error', 'Cập nhập sản phẩm thất bại');
            \Log::info($err->getMessage());
            return false;
        }
        return true;
    }

    // Tính hợp lệ giá sale
    public function isValidPrice($request): bool
    {
        if ($request->input('price') != 0 && $request->input('price_sale') != 0
            && $request->input('price_sale') >= $request->input('price'))
        {
            Session::flash('error', 'Giá khuyến mãi phải nhỏ hơn giá gốc');
            return false;
        }

        if ($request->input('price') == 0 && $request->input('price_sale') != 0)
        {
            Session::flash('error', 'Vui lòng nhập giá gốc');
            return false;
        }
        return true;
    }

    public function destroy($request):bool
    {
        $product = Product::where('id',$request->input('id'))->first();
        if ($product){
            $product->delete();
            $path = str_replace('storage', 'public', $product->thumb);
            Storage::delete($path);
            return true;
        }
        return false;
    }
}
