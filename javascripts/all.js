// This is where it all goes :)
function fixFooter() {
    var footer = $(".footer");
    height = footer.height();
    paddingTop = parseInt(footer.css('padding-top'), 10);//zero if is undefined
    paddingBottom = parseInt(footer.css('padding-bottom'), 10);//zero if is undefined
    totalHeight = (height + paddingTop + paddingBottom);
    footerPosition = footer.position();
    windowHeight = $(window).height();
    height = (windowHeight - footerPosition.top) - totalHeight;
    if (height > 0) {
        footer.css({
            'margin-top': (height) + 'px'
        });
    }
}

$(document).foundation();

$(document).ready(function () {
    fixFooter();
});

$(window).resize(function () {
    fixFooter();
});