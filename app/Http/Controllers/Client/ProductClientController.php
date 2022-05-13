<?php

namespace App\Http\Controllers\Client;

use App\Http\Services\Product\ProductService;

class ProductClientController
{
    protected $_productService;
    public function __construct(ProductService $productService)
    {
        $this->_productService = $productService;
    }

    public function index($id, $slug)
    {
        $product = $this->_productService->show($id);
        $productMore = $this->_productService->more($id);
        return view('client.product.detail',[
            'product' => $product,
            'products' => $productMore
        ]);
    }
}
