$.ajaxSetup({
    headers: {
        'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
    }
});

// xoa menu
function removeRow(id, url) {
    if (confirm('Bạn có chắc chắn muốn xóa?')) {
        $.ajax({
            type: 'DELETE',
            dataType: 'JSON',
            data: {id},
            url: url,
            success: function (result) {
                if (result.error === false) {
                    alert(result.message);
                    location.reload();
                } else {
                    alert('Xóa thất bại');
                }
            }
        })
    }
}

// upload
$('#upload').change(function () {
    const form = new FormData();
    form.append('file', $(this)[0].files[0]);
    $.ajax({
        processData: false,
        contentType: false,
        type: 'POST',
        dataType: 'JSON',
        data: form,
        url: '/admin/upload/services',
        success: function (results) {
            if (results.error === false){
                $('#image_show').html('<a href="'+results.url+'" target="_blank">' +
                    '<img src="'+results.url+'" alt="" width="100px"></a>');
                $('#thumb').val(results.url);
            }else {
                alert('Upload ảnh lỗi');
            }
        }
    });
})
