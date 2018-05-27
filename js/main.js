$(document).ready(function() {
    let image_path;
    let image_name;
    $('.invert-link-img')
        .hover(function() {
            image_path = "";
            var $img = $(this).find('img:first');
            var paths = $img.attr("src").split("/");
            image_name = paths[paths.length-1];
            for( var i=0; i<paths.length-1; i++) {
                image_path += paths[i] + "/";
            }
            $img.attr("src", image_path + "hov_" + image_name);
            $(this).addClass('border-dark');
        }, function() {
            $(this).find('img:first').attr("src", image_path + image_name);
            $(this).removeClass('border-dark');
        });
    $('input#vaucher-code').on('keyup blur', function() {
        if( $(this).val().length == 8 ) {
            var field = $(this)[0];
            var $button = $(this).next();
            $.post( $('#vaucher-url').val(), { date_id: $('#vaucher-date-id').val(), vaucher: $(this).val() }, function( data ) {
                if( data['vaucher_valid'] ) {
                    field.setCustomValidity('');
                    $button.prop('disabled', false);
                }
                else {
                    field.setCustomValidity('Ungültiger Gutschein Code');
                    $button.prop('disabled', true);
                }

            }, 'json');
        }
    });
});
