let global_page = 1,
  global_limit = 10;

function loadIp() {
  $.get('/ip/findAllIps', {page: global_page, limit: global_limit}, ips => {
    loadIpList(ips);
    loadIpPage(ips);
  })
}

function loadIpList(ips) {
  layui.use(['element', 'table'], () => {
    let table = layui.table;
    table.render({
      elem: '#ip',
      data: ips.data,
      cols: [
        [
          {field: 'id', title: 'id'},
          {field: 'ip', title: 'IP地址'},
          {
            field: 'time', title: '最近一次访问时间', templet: data => {
              return getTimeStrByDate(new Date(data.time));
            }
          }
        ]
      ]
    })
  })
}

function loadIpPage(ips) {
  layui.use('laypage', () => {
    layui.laypage.render({
      elem: 'ip-page',
      curr: global_page,
      count: ips.count,
      limit: global_limit,
      limits: [10, 20, 30, 50],
      jump: function (obj, first) {
        if (!first) {
          global_page = obj.curr;
          global_limit = obj.limit;
          loadIp();
        }
      }
    })
  })
}

function getTimeStrByDate(date) {
  let y = date.getFullYear();
  let M = date.getMonth() + 1;
  let d = date.getDate();
  let H = date.getHours();
  let m = date.getMinutes();
  let s = date.getSeconds();
  return y + '-' + (M < 10 ? ('0' + M) : M) + '-' + (d < 10 ? ('0' + d) : d) + " " + (H < 10 ? ('0' + H) : H) + ":" + (m < 10 ? ('0' + m) : m) + ":" + (s < 10 ? ('0' + s) : s);
}