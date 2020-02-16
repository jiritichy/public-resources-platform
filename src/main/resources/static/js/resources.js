let timeout = 350,
    resourceUrl = '/resources';

function jumpPage(url) {
    window.open(url);
}

function showLayout(elem) {
    elem.children('.layout-background').removeClass('display-none').addClass('background-fixed', timeout);
    elem.children('.layout-box').removeClass('display-none').addClass('box-fixed', timeout);
}

function hideLayout(elem) {
    elem.children('.layout-background').removeClass('background-fixed', timeout);
    elem.children('.layout-box').removeClass('box-fixed', timeout);
    setTimeout(() => {
        elem.find('.layout-background, .layout-box').addClass('display-none');
        elem.find('input, textarea').val('');
    }, timeout);
}