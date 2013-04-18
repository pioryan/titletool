$(function() {
    $('body').on('ajax:success', 'form', function(e, data) {
        if($(this).data("append-to")){
            $($(this).data("append-to")).html(data.html)
        }
    })
});