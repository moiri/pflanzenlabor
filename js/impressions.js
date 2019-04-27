$(document).ready(function() {
    var is_visible = false;
    var io = new IntersectionObserver(
        entries => {
            is_visible = (entries[0].intersectionRatio > 0);
            if(is_visible)
                fetch_impression_items();
        }
    );
    io.observe(document.querySelector('#impressions-footer'));
    function fetch_impression_items()
    {
        $.post(
            $('#impression-url-fetch').val(),
            {
                offset: $('.impression_item').length,
                count: 1,
            },
            function( data ) {
                $(data).hide().appendTo('.impressions').fadeIn("fast", function() {
                    if(is_visible)
                        fetch_impression_items();
                });
            },
            'html'
        );
    }
});
