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
        }, function() {
            $(this).find('img:first').attr("src", image_path + image_name);
        });
});
