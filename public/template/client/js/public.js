$.ajaxSetup({
    headers: {
        'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
    }
});
function loadMore(url){
    const page = $('#page').val();
    $.ajax({
        type: 'POST',
        dataType: 'JSON',
        data:{ page},
        url: url,
        success: function (result) {
            if (result.html !== ''){
                $('#loadProduct').append(result.html);
                $('#page').val(page+1);
            }else {
                alert('Đã load hết sản phẩm');
                $('#btn-loadMore').css('display', 'none');
            }
        }
    })
}
