<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Http\Requests\Product\ProductRequest;
use App\Http\Services\Product\ProductService;
use App\Models\Product;
use Illuminate\Http\Request;

class ProductController extends Controller
{
    protected $productService;
    public function __construct(ProductService $productService)
    {
        $this->productService = $productService;
    }

    /**
     * Display a listing of the resource.
     *
     *
     */
    public function index()
    {
        return view('admin.product.list', [
            'title' => 'Danh sách sản phẩm',
            'products' => $this->productService->get()
        ]);
    }

    /**
     * Show the form for creating a new resource.
     *
     *
     */
    public function create()
    {
        return view('admin.products.add', [
           'title' => 'Thêm mới sản phẩm',
            'menus' => $this->productService->getMenu()
        ]);
    }

    /**
     * Store a newly created resource in storage.
     *
     *
     *
     */
    public function store(ProductRequest $request)
    {
        $this->productService->store($request);
        return redirect()->back();
    }

    /**
     * Display the specified resource.
     *
     *
     *
     */
    public function show(Product $product)
    {
        return view('admin.product.edit',[
            'title' => 'Sửa sản phẩm',
            'menus' => $this->productService->getMenu(),
            'product' => $product
        ]);
    }

    /**
     * Update the specified resource in storage.
     *
     *
     */
    public function update(ProductRequest $request, Product $product)
    {
        $result = $this->productService->update($request, $product);
        if ($result){
            return redirect()->route('listProduct');
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     *
     */
    public function destroy($id)
    {
        //
    }
}
