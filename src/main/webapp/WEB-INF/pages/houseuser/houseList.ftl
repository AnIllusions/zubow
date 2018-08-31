<!DOCTYPE html>
<html lang="cn">
<head>
    <meta charset="UTF-8">
    <title>选房</title>
    <link href="/common/plugin/layui/css/layui.css" rel="stylesheet">
</head>
<style>

</style>
<body>
<div class="lenos-search">
    <div class="select">
        地段：
        <div class="layui-inline">
            <input class="layui-input" height="20px" id="rolename" autocomplete="off">
        </div>
        租赁状态：
        <div class="layui-inline">
            <input class="layui-input" height="20px" id="remark" autocomplete="off">
        </div>

        <button class="select-on layui-btn layui-btn-sm" data-type="select"><i class="layui-icon"></i> </button>

        <button class="layui-btn layui-btn-sm icon-position-button" id="refresh" style="float: right;"
                data-type="reload">
            <i class="layui-icon">ဂ</i>
        </button>
    </div>
</div>
<div class="layui-col-md12" style="height:40px;margin-top:3px;">
    <div class="layui-btn-group">
        <button class="layui-btn layui-btn-normal" data-type="add">
            <i class="layui-icon">&#xe608;</i>新增
        </button>
        <button class="layui-btn layui-btn-normal" data-type="update">
            <i class="layui-icon">&#xe642;</i>删除
        </button>
    </div>
</div>
<table id="houseList" lay-filter="house"></table>



<script type="text/html" id="toolBar">
    <a class="layui-btn layui-btn-primary layui-btn-xs" lay-event="detail">查看</a>
    <a class="layui-btn layui-btn-primary layui-btn-xs" lay-event="detail">修改</a>
    <a class="layui-btn layui-btn-primary layui-btn-xs" lay-event="detail">删除</a>
</script>


<script type="text/html" id="photoBar">
    {{# if(d.houseImageVos.length==0) {   }}
    未上传
    {{# }else{}}
   <img src='{{d.houseImageVos[0].imageurl}}' width="50" height="25">
    {{#} }}
</script>

</body>
</html>
<script src="/common/js/jquery.min.js" type="text/javascript"></script>
<script src="/common/plugin/layui/layui.all.js" charset="utf-8"></script>
<script>
    layui.use('table',function () {
        var table = layui.table;
        var $ = layui.jquery;
        
        table.render({
            elem:'#houseList',
            height:'450px',
            url:'/tenant/houseUserList',
            page:true,
            cols:[[
                {type:'checkbox'},
                {field:'houseImageVos',title:'图片',width:120,templet:'#photoBar'},
                {field:'createdate',title:'时间',width:120},
                {field:'address',title:'地点',width:100},
                {field:'status',title:'状态',width:90,sort:true},
                {field:'housetype',title:'户型',width:100,sort:true},
                {field:'decoration',title:'装修风格',width:100},
                {field:'configuration',title:'房屋配置',width:200},
                {field:'rent',title:'租金',width:70,sort:true},
                {field:'renttype',title:'租金方式',width:100,sort:true},
                {field:'leasehold',title:'类型',width:70,sort:true},
                {field:'',title:'操作方式',width:200,templet:'#toolBar'}
                /*{field:'',title:'',width:}*/
            ]],
            limit:10
        })
    })


</script>