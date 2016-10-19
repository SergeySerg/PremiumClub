$(function(){
    init_wysiwyg();
});

function init_wysiwyg(){
    var id = '';
    var editors = $('textarea');
    editors.each(function(i, editor){;
        $(editor).attr('id', 'textarea-wysiwyg-'+i);
        CKEDITOR.replace('textarea-wysiwyg-'+i);
    });
}

function get_wysiwyg(){
    var id = '';
    var editors = $('textarea');
    editors.each(function(i, editor){
        id = $(editor).attr('id')
        $('#'+id).val(CKEDITOR.instances[id].getData());
    });
}