$.ajaxSetup({
    headers: {
        'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
    }
});

function removeRow(id, url){
    if (confirm('Bạn có chắc chắn muốn xóa?')){
        $.ajax({
            type: 'DELETE',
            dataType: 'JSON',
            data: {id},
            url: url,
            success: function (result){
                if (result.error ===false){
                    alert(result.message);
                    location.reload();
                }else {
                    alert('Xóa danh mục thất bại');
                }
            }
        })
    }
}
