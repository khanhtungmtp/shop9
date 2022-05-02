@extends('admin.main')

@section('content')
    <table class="table">
        <thead>
        <tr>
            <th>ID</th>
            <th>Tên</th>
            <th>Trạng thái</th>
            <th>Update</th>
            <th>&nbsp;</th>
        </tr>
        </thead>
        <tbody>
            {!! \App\Helpers\Helper::Menu($menus) !!}
        </tbody>
    </table>
@endsection

