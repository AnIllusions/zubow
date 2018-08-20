<!DOCTYPE html>
<html lang="cn">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
    <meta name="Generator" content="EditPlus®">
    <title>房东个人中心</title>
    <link href="/common/plugin/layui/css/layui.css" rel="stylesheet">
    <link href="/common/css/userinfor.css" rel="stylesheet">
</head>
<style>

</style>
<body>
<#assign currentUser = Session["currentUser"]>
<!-- 布局容器 -->
<div class="layui-layout layui-layout-admin">
    <!-- 头部 -->
    <div class="layui-header">
        <div class="layui-main">
            <!-- logo -->
            <a href="/user/login" style="color: #fff5f2; font-size: 18px; line-height: 60px;">ZUBOW</a>
            <!-- 水平导航 -->
            <ul class="layui-nav" style="position: absolute; top: 0; right: 0; background: none;">
                <li class="layui-nav-item"><a href="javascript:;">租房中心</a></li>
                <
    <#if currentUser != null>
        <li class="layui-nav-item" style="float: right">
            <a href="javascript:;">个人中心</a>
            <dl class="layui-nav-child">
                <dd id="updatePass"><a>修改密码</a></dd>
                <dd><a href="/user/loginout">退出登陆</a></dd>
            </dl>
        </li>
        <li class="layui-nav-item" style="float: right"><a href="javascript:;">用户:${currentUser.name}</a></li>
    <#else>
        <li class="layui-nav-item" style="float: right"><a href="/user/login">请登录</a></li>
    </#if>
            </ul>
        </div>
    </div>

    <!-- 侧边栏 -->
    <div class="layui-side layui-bg-black">
        <div class="layui-side-scroll">
            <ul class="layui-nav layui-nav-tree" lay-filter="left-nav" style="border-radius: 0;">
            </ul>
        </div>
    </div>

    <!-- 主体 -->
    <div class="layui-body">
        <!-- 顶部切换卡 -->
        <div class="layui-tab layui-tab-brief" lay-filter="top-tab" lay-allowClose="true" style="margin: 0;">
            <ul class="layui-tab-title"></ul>
            <div class="layui-tab-content"></div>
        </div>
    </div>

    <!-- 底部 -->
    <div class="layui-footer" style="text-align: center; line-height: 44px;">
        Copyright © 2018 <a href="javascript:;" target="_blank">ZUBOW</a> Powered by Dong
    </div>
</div>

</body>
</html>

<script src="/common/plugin/layui/layui.js" charset="utf-8"></script>
<script>
    /**
     * 对layui进行全局配置
     */
    layui.config({
        base: '/common/plugin/js/'
    });

    /**
     * 初始化整个cms骨架
     */
    layui.use(['cms'], function () {
        var $ = layui.jquery;
        var cms = layui.cms('left-nav', 'top-tab');
        cms.addNav([
            {id: 1, pid: 0, node: '个人信息', url: '/house/houseDetail'},
            {id: 7, pid: 0, node: '注册房源', url: '/house/houseAdd'},
            {id: 2, pid: 0, node: '搜索引擎', url: ''},
            {id: 3, pid: 2, node: '百度', url: 'https://www.baidu.com/'},
            {id: 4, pid: 2, node: '必应', url: 'http://cn.bing.com/'},
            {id: 5, pid: 2, node: '360', url: 'https://www.so.com/'},
            {id: 6, pid: 2, node: '搜狗', url: 'https://www.sogou.com/'},
        ], 0, 'id', 'pid', 'node', 'url');
        cms.bind(60 + 41 + 20 + 44); //头部高度 + 顶部切换卡标题高度 + 顶部切换卡内容padding + 底部高度

        cms.clickLI(0);
        $('#updatePass').on('click', function(){
            layer.open({
                type: 2,
                title: '修改密码',
                maxmin: true,
                shadeClose: true, //点击遮罩关闭层
                area : ['400px' , '240px'],
                content: '/user/updatePass'
            });
        });

    });

</script>