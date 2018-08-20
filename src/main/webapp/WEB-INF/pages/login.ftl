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
<#--导航条-->
<div class="header layui-bg-cyan">
    <ul class="layui-nav ">
        <li class="layui-nav-item"><a href="">城市[重庆]</a></li>
        <li class="layui-nav-item"><a href="">房源中心</a></li>
        <li class="layui-nav-item"><a href="">整租</a></li>
        <li class="layui-nav-item"><a href="">合租</a></li>

        <li class="layui-nav-item" style="float: right"><a href="">关于我们</a></li>
        <li class="layui-nav-item" style="float: right"><a href="">了解更多</a></li>
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

<#--登陆 项-->
<div class="" id="login">
    <div class="loginBar">
        <form class="layui-form" action="/user/login" method="post">
            <h1 style="height: 50px;text-align: center;margin-top: 30px"> 登陆 </h1>
            <div class="layui-form-item">
                <label class="layui-form-label">用户名</label>
                <div class="layui-input-block" style="width:300px">
                    <input type="text" name="name" required lay-verify="required" placeholder="用户名"
                           class="layui-input">
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">密码</label>
                <div class="layui-input-block" style="width:300px">
                    <input type="password" name="password" required lay-verify="required" placeholder="密码"
                           class="layui-input">
                </div>
            </div>
            <div class="layui-form-item" style="margin-top: 40px">
                <label class="layui-form-label"></label>
                <div class="layui-input-block" style="width:300px">
                    <input style="background-color: #ff8a00" type="submit" class="layui-btn" value="登陆">
                    <a href="javascript:;"><i id="reg" type="submit" class="layui-btn" style="float: right;background-color: #ff8a00">注册</i></a>
                </div>
            </div>
        </form>
    </div>
</div>
<#--登陆项结束-->

<#--注册页面 项-->
<div class="" id="register">
    <div class="registerBar">
        <form class="layui-form" action="/user/register" method="post">
            <h1 style="height: 50px;text-align: center;margin-top: 30px"> 注册 </h1>
            <div class="layui-form-item">
                <label class="layui-form-label">用户名</label>
                <div class="layui-input-block" style="width:300px">
                    <input type="text" name="name" required lay-verify="required" placeholder="用户名"
                           class="layui-input">
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">密码</label>
                <div class="layui-input-block" style="width:300px">
                    <input type="password" name="password" required lay-verify="required" placeholder="密码"
                           class="layui-input">
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">确认密码</label>
                <div class="layui-input-block" style="width:300px">
                    <input type="password" name="password1" required lay-verify="required" placeholder="确认密码"
                           class="layui-input">
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">手机号</label>
                <div class="layui-input-block" style="width:300px">
                    <input type="text" name="tel" required lay-verify="required" placeholder="手机号"
                           class="layui-input">
                </div>
            </div>
        <#-- 用于完善资料-->
        <#--<div class="layui-form-item">
            <label class="layui-form-label">身份证</label>
            <div class="layui-input-block" style="width:300px">
                <input type="password" name="text" required lay-verify="required" placeholder="身份证"
                       class="layui-input">
            </div>
        </div>-->
            <div class="layui-form-item">
                <label class="layui-form-label">用户类型</label>
                <div class="layui-input-block">
                    <input type="radio" name="type" value="1" title="租客" checked>
                    <input type="radio" name="type" value="0" title="房东">
                </div>
            </div>
            <div class="layui-form-item" style="margin-top: 15px">
                <label class="layui-form-label"></label>
                <div class="layui-input-block" style="width:300px">
                    <input style="background-color: #ff8a00" type="submit" class="layui-btn" value="注册">
                    <a href="#"><i id="log" type="submit" class="layui-btn" style="float: right;background-color: #ff8a00">登陆</i></a>
                </div>
            </div>
        </form>
    </div>
</div>
<#--注册项结束-->

<#--房源展示-->
<div>
    <div class="category">
        <h2 class="top-line">·优质房源>>></h2>
        <ul>
            <li>
                <a href="#">
                    <img src="/common/image/house/fangyuan1.jpg" width="280px" height="250px" >
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