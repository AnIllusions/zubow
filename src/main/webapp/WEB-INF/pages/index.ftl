<!DOCTYPE html>
<html lang="cn">
<head>
    <meta charset="UTF-8">
    <title>租房博</title>
    <link href="/common/plugin/layui/css/layui.css" rel="stylesheet">
    <link href="/common/css/index.css" rel="stylesheet">
</head>

<style>

</style>
<body>
<#assign currentUser = Session["currentUser"]>
<#--导航条-->
<div class="header layui-bg-cyan">
    <ul class="layui-nav ">
        <li class="layui-nav-item"><a href="javascript:;">城市[重庆]</a></li>
        <li class="layui-nav-item"><a href="javascript:;">房源中心</a></li>
        <li class="layui-nav-item"><a href="javascript:;">整租</a></li>
        <li class="layui-nav-item"><a href="javascript:;">合租</a></li>

    <#if currentUser != null>
        <li class="layui-nav-item" style="float: right">
            <a href="javascript:;">个人中心</a>
            <dl class="layui-nav-child">
                <dd><a href="javascript:;">完善资料</a></dd>
                <dd><a href="javascript:;">修改密码</a></dd>
                <dd><a href="/user/loginout">退出登陆</a></dd>
            </dl>
        </li>
        <li class="layui-nav-item" style="float: right"><a href="javascript:;">用户:${currentUser.name}</a></li>
    <#else>
        <li class="layui-nav-item" style="float: right"><a href="/user/login">请登录</a></li>
    </#if>

    <#if currentUser!=null>
        <#if currentUser.type == 0>
        <li class="layui-nav-item" style="float: right"><a href="/house/houseUser">房东中心</a></li>
        </#if>
    </#if>

    </ul>
</div>
<#--导航条结束-->

<#-- 轮播图-->
<div class="layui-carousel" id="test1">
    <div carousel-item>
        <div><img src="/common/image/lunbo/1.jpg"></div>
        <div><img src="/common/image/lunbo/2.jpg"></div>
        <div><img src="/common/image/lunbo/3.jpg"></div>
        <div><img src="/common/image/lunbo/4.jpg"></div>
    </div>
</div>
<#--轮播图 结束-->
<#-- 搜索项-->
<div class="" id="login">
    <div class="search">
    <#-- 搜索栏-->
        <div class="panel-search">
            <form>
                <input class="input-inline" type="text">
                <input type="submit" value="搜索" class="layui-btn layui-btn-warm"
                       style="margin-left: -5px;margin-top: 0">
            </form>
        </div>
    <#-- 数据栏 -->
        <div class="search-list">
            <div>
                <h1 class="search-bar">区域</h1>
                <div>
                    <a href="">渝中</a>
                    <a href="">渝北</a>
                    <a href="">南中</a>
                </div>
            </div>
        </div>

    </div>
</div>
<#-- 搜索项结束-->
<#-- 搜索项结束-->

<#--房源展示-->
<div>
    <div class="category">
        <h2 class="top-line">·优质房源>>></h2>
        <ul>
            <li>
                <a href="#">
                    <img src="/common/image/house/fangyuan1.jpg" width="280px" height="250px">
                    <div class="box4con">
                        <p>地点</p>
                        <div>
                            <span class="s1">两室一厅</span>
                            <span class="s2">价格：125万</span>
                        </div>
                    </div>
                </a>
            </li>

        </ul>
    </div>
</div>
<#--房源展示结束-->


<#--结束 页脚-->
<footer>
    <div>
        <div class="footerBar">
            <ul>
                <li>sdfsdfadsf</li>
                <li>sdfsdfadsf</li>
                <li>sdfsdfadsf</li>
            </ul>
        </div>
    </div>
</footer>

</body>
</html>
<script src="/common/plugin/layui/layui.all.js" charset="utf-8"></script>
<script src="/common/js/jquery.min.js" type="text/javascript"></script>
<!-- 注意：如果你直接复制所有代码到本地，上述js路径需要改成你本地的 -->
<script>
    layui.use('carousel', function () {
        var carousel = layui.carousel;
        //建造实例
        carousel.render({
            elem: '#test1'
            , width: '100%' //设置容器宽度
            , height: '500px'
            , arrow: 'hover' //始终显示箭头
        });
    });

    $(function () {
        var login = $("#login");
        var register = $("#register");
        register.hide();
        login.show();

        $("#reg").click(function () {
            register.show();
            login.hide();
        });

        $("#log").click(function () {
            register.hide();
            login.show();
        });
    });


</script>