<?php

namespace App\Http\Services;

use App\Jobs\sendMail;
use App\Models\Cart;
use App\Models\Customer;
use App\Models\Product;
use Illuminate\Support\Arr;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Session;

class CartService
{
    public function create($request):bool
    {
        $product_id = (int)$request->input('product_id');
        $qty        = (int)$request->input('num-product');
        if ($product_id <= 0 || $qty <= 0){
            return false;
        }
        $carts = Session::get('carts');
        // chua co san pham
        if (is_null($carts))
        {
            Session::put('carts', [
                $product_id => $qty
            ]);
            return true;
        }
        $product_exits = Arr::exists($carts,$product_id);
        if ($product_exits){
            $carts[$product_id] = $carts[$product_id] + $qty;
            Session::put('carts',$carts);
            return true;
        }
        // sp moi
        $carts[$product_id] = $qty;
        Session::put('carts',$carts);
        return true;
    }

    public function show()
    {
        $carts = Session::get('carts');
        if (is_null($carts)) return [];
        $productId = array_keys($carts);
        return Product::select('id', 'name', 'price', 'price_sale', 'thumb')->where('active', 1)
            ->whereIn('id', $productId)->get();
    }

    public function update($request):bool
    {
        Session::put('carts',$request->input('num_product'));
        return true;
    }

    public function remove($id):bool
    {
        $carts = Session::get('carts');
        unset($carts[$id]);
        Session::put('carts', $carts);
        return true;
    }
    // beginTransaction neu insert that bai se rollback data ko luu vao db
    public function addCart($request)
    {
        try
        {
            DB::beginTransaction();
            $customer = Customer::create([
                'name' => $request->input('name'),
                'phone' => $request->input('phone'),
                'email' => $request->input('email'),
                'address' => $request->input('address'),
                'note' => $request->input('note')
            ]);
            DB::commit();
            $this->getProduct($customer->id);
            Session::flash('success', 'Mua hàng thành công');
            SendMail::dispatch($request->input('email'))->delay(now()->addSeconds(2));
            Session::forget('carts');

        }catch (\Exception $err){
            DB::rollBack();
            Session::flash('error', 'Mua hàng bị lỗi, vui lòng kiểm tra lại');
            \Log::info($err->getMessage());
        }
    }

    public function getProduct($customer_id)
    {
        $carts = Session::get('carts');
        if (is_null($carts)) return [];
        $productId = array_keys($carts);
        $products = Product::select('id', 'name', 'price', 'price_sale', 'thumb')
            ->where('active', 1)
            ->whereIn('id', $productId)->get();

        $data = [];
        foreach ($products as $product)
        {
            $data[] = [
                'customer_id' => $customer_id,
                'product_id' => $product->id,
                'price' => $product->price_sale != 0 ? $product->price_sale : $product->price,
                'qty' => $carts[$product->id],
            ];
        }

        return Cart::insert($data);
    }

    public function sendMail($email, $data)
    {
        $cart_info = Product::where('id', $data[0]['product_id'])->get();
        $customer_info = Customer::where('id', $data[0]['customer_id'])->firstOrFail();
        return [
            'cart_info' => $cart_info,
            'customer_info' => $customer_info,
            'email' => $email,
        ];
    }
}
