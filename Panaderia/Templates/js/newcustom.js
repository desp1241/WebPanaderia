// isotope js
$(window).on('load', function () {
    $('.filters_menu li').click(function () {
        $('.filters_menu li').removeClass('active');
        $(this).addClass('active');

        var data = $(this).attr('data-filter');
        $grid.isotope({
            filter: data
        })
    });

    var $grid = $(".grid").isotope({
        itemSelector: ".all",
        percentPosition: false,
        masonry: {
            columnWidth: ".all"
        }
    })

    $(document).ready(function () {
        function getUrlVars() {
            var vars = [], hash;
            var hashes = window.location.href.slice(window.location.href.indexOf('?') + 1).split('&');
            for (var i = 0; i < hashes.length; i++) {
                hash = hashes[i].split('=');
                vars.push(hash[0]);
                vars[hash[0]] = hash[1];
            }
            return vars;
        };

        var id = getUrlVars()["id"];
        if (id > 0) {
            $('.filters_menu li').removeClass('active');
        }

        $('.filters_menu li').each(function () {
            if (id == this.attributes["data-id"].value) {
                $(this).closest("li").addClass("active");

                var data = $(this).attr('data-filter');
                $grid.isotope({
                    filter: data
                })

                return;
            }
        });
    });

});

(function ($) {
    var proQty = $('.pro-qty');
    proQty.prepend('<span class="dec qtybtn" >-</span>');
    proQty.append('<span class="inc qtybtn" >+</span>');
    proQty.on('click', '.qtybtn', function () {
        var $button = $(this);
        var oldValue = $button.parent().find('input').val();
        if ($button.hasClass('inc')) {
            if (oldValue >= 10) {
                var newVal = parseFloat(oldValue);
            } else {
                newVal = parseFloat(oldValue) + 1;
            }
        } else {
            if (oldValue > 1) {
                var newVal = parseFloat(oldValue) - 1;
            } else {
                newVal = 1;
            }
        }
        $button.parent().find('input').val(newVal);
    });
})(jQuery);