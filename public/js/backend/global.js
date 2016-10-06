$(function(){

});

function get_wysiwyg(){
    var id = '';
    var editors = $('.ckeditor-wysiwyg');
    editors.each(function(i, editor){
        id = $(editor).attr('id')
        $('#'+id).val(CKEDITOR.instances[id].getData());
    });
}