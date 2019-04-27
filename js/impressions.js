$(document).ready(function() {
    var is_fetching = false;
    $(window).scroll(function() {
        if(is_fetching) return;
        var scroll_top = $(window).scrollTop();
        var scroll_pos = $(document).height() - $(window).height();
        var delta = $('#impressions-footer').height();
        if (scroll_top >= scroll_pos - delta || scroll_top == scroll_pos) {
            is_fetching = true;
            $.post(
                $('#impression-url-fetch').val(),
                {
                    offset: $('.impression_item').length,
                    count: 1,
                },
                function( data ) {
                    $('.impressions').append(data);
                    is_fetching = false;
                },
                'html'
            );
        }
    });
});
