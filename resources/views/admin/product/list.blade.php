@extends('admin.main')

@section('content')
    <table class="table">
        <thead>
        <tr>
            <th>ID</th>
            <th>Tên sản phẩm</th>
            <th>Danh mục</th>
            <th>Giá gốc</th>
            <th>Giá khuyến mãi</th>
            <th>Trạng thái</th>
            <th>Update</th>
            <th style="width: 100px">Chức năng</th>
        </tr>
        </thead>
        <tbody>
        @foreach($products as $product)
            <tr>
                <td>{{$product->id}}</td>
                <td>{{$product->name}}</td>
                <td>{{$product->menu->name}}</td>
                <td>{{$product->price}}</td>
                <td>{{$product->price_sale}}</td>
                <td>{!! \App\Helpers\Helper::Active($product->active) !!}</td>
                <td>{{$product->updated_at}}</td>
                <td>
                    <a href="/admin/product/edit/{{$product->id}}" class="btn btn-primary btn-sm">
                        <i class="fas fa-edit"></i></a>
                    <a href="#" onclick="removeRow({{$product->id}},'/admin/product/destroy')" class="btn btn-danger btn-sm">
                        <i class="fas fa-trash"></i></a>
                </td>
            </tr>
        @endforeach
        </tbody>
    </table>
    <div class="card-footer clearfix">
        {!! $products->links(); !!}
    </div>
@endsection

