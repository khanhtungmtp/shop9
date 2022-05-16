<?php

namespace App\Http\Controllers;

use App\Http\Services\CartService;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Session;

class CartController
{
    protected $_cartService;

    public function __construct(CartService $cartService)
    {
        $this->_cartService = $cartService;
    }

    public function index(Request $request)
    {
        $result = $this->_cartService->create($request);
        if ($result === false){
            return redirect()->back();
        }
        return redirect('/carts');
    }

    public function show()
    {
        $products = $this->_cartService->show();
        $carts = Session::get('carts');
        if (is_null($carts)){
            $carts = [];
        }
        return view('client.carts.list', [
            'title' => 'Giỏ hàng',
            'products' => $products,
            'carts' => $carts
        ]);
    }

    public function update(Request $request)
    {
        $this->_cartService->update($request);
        return redirect('/carts');
    }

    public function remove($id)
    {
        $this->_cartService->remove($id);
        return redirect('/carts');
    }

    public function addCart(Request $request)
    {
        $this->_cartService->addCart($request);
        return redirect()->back();
    }
}
