@extends('admin.main')
@section('head')
    <script src="/ckeditor/ckeditor.js"></script>
@endsection
@section('content')
    <form action="" method="post">
        @csrf
        @include('admin.alert')
        <div class="card-body">
            <div class="form-group">
                <label for="name">Tên danh mục</label>
                <input type="text" class="form-control" name="name" id="name" placeholder="Tên danh mục" value="{{$menu->name}}">
            </div>
            <div class="form-group">
                <label for="parent_id">Danh mục cha</label>
                <select name="parent_id" id="parent_id" class="form-control">
                    <option value="0" {{$menu->id ==0 ? 'selected' :''}}>Danh mục cha</option>
                    @foreach($menus as $menuParent)
                        <option value="{{$menuParent->id}}" {{$menuParent->id == $menu->id ? 'selected' :''}}>
                            {{$menuParent->name}}
                        </option>
                    @endforeach
                </select>
            </div>
            <div class="form-group">
                <label for="description">Mô tả</label>
                <textarea name="description" id="description" class="form-control" >
                    {{$menu->description}}
                </textarea>
            </div>
            <div class="form-group">
                <label for="content">Nội dung</label>
                <textarea name="content" id="content" class="form-control">{{$menu->content}}</textarea>
            </div>
            <div class="form-group">
                <label for="content">Kích hoạt</label>
                <div class="custom-control custom-radio">
                    <input class="custom-control-input" value="1" type="radio" id="active" name="active" {{$menu->active ==1 ? 'checked' : ''}}>
                    <label for="active" class="custom-control-label">Có</label>
                </div>
                <div class="custom-control custom-radio">
                    <input class="custom-control-input" value="0" type="radio" id="no_active" name="active" {{$menu->active ==0 ? 'checked' : ''}}>
                    <label for="no_active" class="custom-control-label">Không</label>
                </div>
            </div>
        </div>
        <!-- /.card-body -->

        <div class="card-footer">
            <button type="submit" class="btn btn-primary">Sửa</button>
        </div>
    </form>
@endsection
@section('footer')
    <script>
        // Replace the <textarea id="editor1"> with a CKEditor 4
        CKEDITOR.replace( 'content' );
    </script>
@endsection
