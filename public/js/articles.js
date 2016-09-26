
$(function(){
    $('.article-delete').on('click', function(event){
        if(confirm('Вы уверены?')){
            var $thisEl = $(this);
            $.ajax({
                url: $thisEl.attr('href'),
                type: "POST",
                data: {
                    '_method': 'Delete',
                    '_token' : $('#token').text()
                },
                success: function(data){
                    console.info('Server response: ', data);
                    if(data.status == 'success'){
                        $thisEl.parents('tr').fadeOut(3000);
                    }
                    alert(data.message);
                }
            })
        }
        event.preventDefault();

    });

});
