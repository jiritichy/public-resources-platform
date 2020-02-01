let timeout = 300,
    topLength = 30,
    resourceUrl = '/resources';

function jumpPage(url) {
    window.location.href = url;
}

function loadLayoutSize() {
    let layoutBox = $('.layout-box');
    $.each(layoutBox, function (i) {
        layoutBox.eq(i).css('margin-top', '-' + (layoutBox.eq(i).height() / 2 + topLength) + 'px');
    });
}

loadLayoutSize();

function showLayout(elem) {
    let layoutBox = elem.children('.layout-box');
    elem.children('.layout-background').removeClass('display-none').animate({
        'opacity': .5
    }, timeout);
    layoutBox.removeClass('display-none').animate({
        'opacity': 1,
        'margin-top': '-' + (layoutBox.height() / 2) + 'px'
    }, timeout);
}

function hideLayout(elem) {
    let layoutBox = elem.children('.layout-box');
    elem.children('.layout-background').animate({
        'opacity': 0
    }, timeout);
    layoutBox.animate({
        'opacity': 0,
        'margin-top': '-' + (layoutBox.height() / 2 + topLength) + 'px'
    }, timeout);
    setTimeout(() => {
        elem.children('.layout-background, .layout-box').addClass('display-none');
    }, timeout);
}