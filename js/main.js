$(document).ready(function() {
    let image_path;
    let image_name;
    $('.invert-link-img')
        .hover(function() {
            image_path = "";
            var $img = $(this).find('img:visible:first');
            var paths = $img.attr("src").split("/");
            var reverse = false;
            image_name = paths[paths.length-1];
            var new_names = image_name.split("_");
            var new_name = "hov_" + image_name;
            if(new_names[0] == "hov") {
                new_name = "";
                for( var i=1; i<new_names.length-1; i++) {
                    new_name += new_names[i] + "_";
                }
                new_name += new_names[new_names.length-1];
            }
            console.log(new_name)

            for( var i=0; i<paths.length-1; i++) {
                image_path += paths[i] + "/";
            }
            $img.attr("src", image_path + new_name);
            $(this).addClass('border-dark');
        }, function() {
            $(this).find('img:visible:first').attr("src", image_path + image_name);
            $(this).removeClass('border-dark');
        });
    $('a#vaucher-submit').on('click', function(event) {
        var $alert = $('#vaucher-alert');
        event.preventDefault();
        $.post(
            $('#vaucher-url-check').val(),
            {
                invoice: $('#vaucher-invoice').val(),
                vaucher: $('#vaucher-code').val(),
            },
            function( data ) {
                if( data['vaucher_valid'] ) {
                    window.location.replace($('#vaucher-url-thanks').val());
                }
                else {
                    $alert.text(data['msg']);
                    $alert.removeClass('d-none');
                }
            },
            'json'
        );
    });
    $('input[name^="dito"]').on('change', function() {
        var names = $(this).prop("name").split('-');
        var $card = $('#' + names[1] + '-address');
        if($(this).prop("checked"))
        {
            $card.addClass('d-none');
            $card.find('input').each(function () {
                $(this).removeAttr("required");
            })
        }
        else
        {
            $card.removeClass('d-none');
            $card.find('input').each(function () {
                $(this).attr("required", "");
            })
        }
    });
    $('button[id|="filter"]').on('click', function() {
        var ids = $(this).attr('id').split('-');
        var $items = $('div[class|="target"]');
        var $items_hide = $items.not('.target-' + ids[1]);
        var $items_show = $items.filter('.target-' + ids[1]);
        $('button[id|="filter"]').removeClass('active');
        $(this).addClass('active');
        $items_hide.hide();
        $items_show.show();
    });
});
