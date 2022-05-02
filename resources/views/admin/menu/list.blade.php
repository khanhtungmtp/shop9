@extends('admin.main')

@section('content')
    <table class="table">
        <thead>
        <tr>
            <th>ID</th>
            <th>Tên</th>
            <th>Trạng thái</th>
            <th>Update</th>
            <th style="width: 100px">Chức năng</th>
        </tr>
        </thead>
        <tbody>
            {!! \App\Helpers\Helper::Menu($menus) !!}
        </tbody>
    </table>
@endsection

