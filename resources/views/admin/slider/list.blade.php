@extends('admin.main')

@section('content')
    <table class="table">
        <thead>
        <tr>
            <th>ID</th>
            <th>Tiêu đề</th>
            <th>Thứ tự</th>
            <th>Đường link</th>
            <th>Ảnh</th>
            <th>Trạng thái</th>
            <th>Update</th>
            <th style="width: 100px">Chức năng</th>
        </tr>
        </thead>
        <tbody>

        @foreach($sliders as $slider)
            <tr>
                <td>{{$slider->id}}</td>
                <td>{{$slider->title}}</td>
                <td>{{$slider->sort_by}}</td>
                <td>{{$slider->url}}</td>
                <td>
                    <a href="{{$slider->thumb}}" target="_blank">
                        <img src="{{$slider->thumb}}" width="100px" alt="">
                    </a>
                </td>
                <td>{!! \App\Helpers\Helper::Active($slider->active) !!}</td>
                <td>{{$slider->updated_at}}</td>
                <td>
                    <a href="/admin/slider/edit/{{$slider->id}}" class="btn btn-primary btn-sm">
                        <i class="fas fa-edit"></i></a>
                    <a href="#" onclick="removeRow({{$slider->id}},'/admin/slider/destroy')" class="btn btn-danger btn-sm">
                        <i class="fas fa-trash"></i></a>
                </td>
            </tr>
        @endforeach
        </tbody>
    </table>
@endsection

