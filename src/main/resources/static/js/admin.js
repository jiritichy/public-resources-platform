let resourcesUrl = '/resources';

function loadResources(fatherId) {
    loadResourceForm();
    if (fatherId === undefined) {
        fatherId = $('.box-title a:last-child').attr('title');
    }
    $.get(`/resources/findByFatherId/${fatherId}`, res => {
        res = res.resource;
        loadItemTable(res);
    });
}

function loadItemTable(items) {
    layui.config({
        base: '/layui2_5_6/lay/modules/'
    });
    layui.use(['table', 'layer', 'soulTable'], () => {
        let table = layui.table,
            layer = layui.layer,
            soulTable = layui.soulTable;
        table.render({
            elem: '#resources',
            data: items,
            toolbar: '#resources-toolbar',
            limit: items.length,
            cols: [
                [
                    {
                        field: 'id', title: '资源ID', templet: d => {
                            return '<div><i class="layui-icon layui-icon-snowflake"/>' + d.id + '</div>';
                        }, width: 100
                    },
                    {
                        field: 'name', title: '资源名称', event: 'openFolder', templet: d => {
                            return '<a href="javascript:void(0)">' + d.name + '</a>';
                        }
                    },
                    {field: 'link', title: '资源内容'},
                    {field: 'type', title: '资源类型', width: 130},
                    {
                        field: 'ctime', title: '资源创建时间', templet: d => {
                            return formatDate(new Date(d.ctime));
                        }, width: 170
                    },
                    {field: 'count', title: '累计访问次数', width: 130},
                    {title: '操作', toolbar: '#resources-tool', width: 200}
                ]
            ],
            totalRow: true,
            rowDrag: {
                trigger: '.layui-icon-snowflake',
                done: function (obj) {
                    let father = $('.box-title').find('a').eq(0).attr('title');
                    $.post(`${resourcesUrl}/rankResources/${father}/${obj.oldIndex}/${obj.newIndex}`, () => {
                        loadResources();
                    })
                }
            },
            done: function () {
                soulTable.render(this)
            }
        });
        table.on('toolbar(resources)', elem => {
            switch (elem.event) {
                case 'addDir':
                    showLayout($('#create-dir'));
                    break;
                case 'addFile':
                    showLayout($('#create-file'));
                    break;
                case 'addLink':
                    showLayout($('#create-link'));
                    break;
            }
        });
        table.on('tool(resources)', elem => {
            let event = elem.event,
                data = elem.data;
            switch (event) {
                case 'detail':
                    if (data.type === 'folder') {
                        $('#folder-detail-layout .layout-title').text(data.id);
                        $('#folder-detail-layout input[name=name]').val(data.name);
                        showLayout($('#folder-detail-layout'));
                    } else {
                        $('#detail-layout .layout-title').text(data.id);
                        $('#detail-layout input[name=name]').val(data.name);
                        $('#detail-layout textarea[name=link]').val(data.link);
                        showLayout($('#detail-layout'));
                    }
                    break;
                case 'edit':
                    if (data.type === 'folder') $('#edit-layout .layui-form-item:eq(2)').addClass('display-none');
                    else $('#edit-layout .layui-form-item:eq(2)').removeClass('display-none');
                    $('#edit-layout .layout-title').text(data.name);
                    $('#edit-layout input[name=id]').val(data.id);
                    $('#edit-layout input[name=name]').val(data.name);
                    $('#edit-layout textarea[name=link]').val(data.link);
                    $('#edit-layout input[name=father]').val(data.father);
                    showLayout($('#edit-layout'));
                    break;
                case 'del':
                    if (data.type === 'folder') {
                        layer.confirm('此为文件夹，删除后包括内容将不可恢复，是否删除?', {
                            btn: ['删除', '不删除']
                        }, () => {
                            $.post(`${resourcesUrl}/delResource/${data.id}/${data.type}`, res => {
                                res = res > 0 ? '删除成功!' : '删除失败!';
                                layer.msg(res);
                                loadResources();
                            })
                        });
                    }
                    break;
                case 'openFolder':
                    let type = data.type;
                    switch (type) {
                        case 'folder':
                            let html = '<a href="javascript:void(0)" title="' + data.children +
                                '" onclick="changeFolder($(this))">' + data.name + '</a>';
                            $('.layui-breadcrumb').append('<span lay-separator="">/</span>')
                                .append(html);
                            loadResources();
                            break;
                        case 'link':
                            jumpPage(data.link);
                            loadResources();
                            break;
                    }
                    break;
            }
        });
    })
}

function loadResourceForm() {
    layui.use(['element', 'form', 'layer', 'tree'], () => {
        let form = layui.form,
            layer = layui.layer,
            tree = layui.tree;
        form.on('submit(addDir)', elem => {
            let field = elem.field;
            if (field.name === '') {
                layer.msg('目录名不能为空!');
            } else {
                field['type'] = 'folder';
                field['father'] = $('.box-title a:last-child').attr('title');
                $.post(`${resourcesUrl}/addResource`, field, res => {
                    res = res > 0 ? '目录创建成功!' : '目录创建失败!';
                    layer.msg(res);
                    hideLayout($('#create-dir'));
                    loadResources();
                })
            }
        });
        form.on('submit(addFile)', elem => {
            let field = elem.field;
            if (field.name === '') {
                layer.msg('文件名不能为空!');
            } else if (field.link === '') {
                layer.msg('文件内容不能为空!');
            } else {
                field['type'] = 'file';
                field['father'] = $('.box-title a:last-child').attr('title');
                $.post(`${resourcesUrl}/addResource`, field, res => {
                    res = res > 0 ? '文件创建成功!' : '文件创建失败!';
                    layer.msg(res);
                    hideLayout($('#create-file'));
                    loadResources();
                })
            }
        });
        form.on('submit(addLink)', elem => {
            let field = elem.field;
            if (field.name === '') {
                layer.msg('链接名不能为空!');
            } else if (field.link === '') {
                layer.msg('链接内容不能为空!');
            } else {
                field['type'] = 'link';
                field['father'] = $('.box-title a:last-child').attr('title');
                $.post(`${resourcesUrl}/addResource`, field, res => {
                    res = res > 0 ? '链接创建成功!' : '链接创建失败!';
                    layer.msg(res);
                    hideLayout($('#create-link'));
                    loadResources();
                })
            }
        });
        form.on('submit(move)', () => {
            let structure = $('#structure');
            if (structure.css('display') === 'block')
                structure.fadeOut();
            else
                structure.fadeIn();
        });
        form.on('submit(edit)', elem => {
            let field = elem.field;
            $.post(`${resourcesUrl}/updateResource`, field, res => {
                res = res > 0 ? '资源信息修改成功!' : '资源信息修改失败!';
                layer.msg(res);
                hideLayout($('#edit-layout'));
                loadResources();
            })
        });
        $.get(`${resourcesUrl}/getTreeStructure`, data => {
            tree.render({
                elem: '#structure',
                data: data,
                click: function (obj) {
                    let data = obj.data;
                    $('input[name=father]').val(data.id);
                    $('.resource-name').html(data.title);
                    $('#structure').fadeOut();
                }
            });
        });
    })
}

function changeFolder(obj) {
    let aLength = obj.parents('.layui-breadcrumb').find('a, span');
    if (obj.index() < aLength.length - 1) {
        for (let i = obj.index() + 1; i < aLength.length; i++) {
            aLength.eq(i).remove();
        }
    }
    loadResources();
}

function formatDate(date) {
    let y = date.getFullYear();
    let M = date.getMonth() + 1;
    let d = date.getDate();
    let H = date.getHours();
    let m = date.getMinutes();
    let s = date.getSeconds();
    return y + '-' + (M < 10 ? ('0' + M) : M) + '-' + (d < 10 ? ('0' + d) : d) + " " + (H < 10 ? ('0' + H) : H)
        + ":" + (m < 10 ? ('0' + m) : m) + ":" + (s < 10 ? ('0' + s) : s);
}
