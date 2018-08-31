<!DOCTYPE html>
<html lang="cn">
<head>
    <meta charset="UTF-8">
    <title>选房</title>
    <link href="/common/plugin/layui/css/layui.css" rel="stylesheet">
    <link href="/common/css/bootstrap.css" rel='stylesheet' type='text/css'/>
    <link href="/common/css/style.css" rel='stylesheet' type='text/css'/>

</head>
<body>
<#--导航条-->
<div class="header layui-bg-cyan">
    <ul class="layui-nav ">
        <li class="layui-nav-item"><a href="javascript:;">城市[重庆]</a></li>
        <li class="layui-nav-item"><a href="/tenant/houseList">房源中心</a></li>
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
<div>
    <div style="margin-left: 100px;float: left;margin-top: 20px">
        <a href="/user/login" style="color: red; font-size: 30px; line-height: 60px;">ZUBOW | 租房</a>
    </div>
    <div class="panel-search" style="float: right;margin-right:100px;margin-top: 40px">
        <form>
            <input class="input-inline" type="text" size="75" style="height: 30px">
            <input type="submit" value="搜索" class="layui-btn layui-btn-warm"
                   style="margin-left:-5px;margin-top: -3px;height: 34px;background-color: #007DDB">
        </form>
    </div>
</div>
<#-- 房源详情 -->
<div style="margin-top: 200px;margin-left: 250px">
    <div class="images_3_of_2">
        <ul id="etalage">
            <#assign imgList=house.houseImageVos>
                <#if imgList ? size gt 0>
                    <#list imgList as img>
                   <li>
                       <img class="etalage_thumb_image" src="${img.imageurl}" class="img-responsive"/>
                       <img class="etalage_source_image" src="${img.imageurl}" class="img-responsive" title="${house.address}"/>
                   </li>
                    </#list>
                <#else >
                    <li>
                        <img class="etalage_thumb_image" src="/common/image/noimg.png" class="img-responsive"/>
                        <img class="etalage_source_image" src="" class="img-responsive" title="无图"/>
                    </li>
                </#if>

        </ul>
        <div class="clearfix"></div>
    </div>


</div>

详细情况
${house.rent}
</body>
</html>
<script src="/common/js/jquery.min.js" type="text/javascript"></script>
<script src="/common/plugin/layui/layui.js" charset="utf-8"></script>
<script src="/common/js/jquery.easydropdown.js"></script>
<script src="/common/js/jquery.etalage.min.js"></script>
<script>

    layui.use('flow', function () {
        var flow = layui.flow;
        var $ = layui.jquery;

        $(document).ready(function ($) {
            $('#etalage').etalage({
                thumb_image_width: 300,
                thumb_image_height: 400,
                source_image_width: 900,
                source_image_height: 1200,
                show_hint: true,
                click_callback: function (image_anchor, instance_id) {

                }
            });
        });

    });
</script>