<!DOCTYPE html>
<html lang="cn">
<head>
    <meta charset="UTF-8">
    <title>选房</title>
    <link href="/common/plugin/layui/css/layui.css" rel="stylesheet">
    <link href="/common/css/house-list.css" rel="stylesheet">
</head>
<style>

</style>
<body>
<#assign currentUser = Session["currentUser"]>
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


<div class="layui-tab layui-tab-card" style="margin-top: 100px;margin-left: 100px;margin-right: 100px">
    <ul class="layui-tab-title">
        <li class="layui-this">租房</li>
    </ul>
    <div class="layui-tab-content" style="height: 50%;">
        <div class="layui-tab-item layui-show">
            <dl>
                <dt>租房类型:</dt>
                <dd>
                    <a href="/user/login">整租</a>&nbsp;&nbsp;
                    <a href="/user/login">合租</a>&nbsp;&nbsp;
                </dd>
            </dl>
            <dl>
                <dt>租金:</dt>
                <dd>
                    <a href="/user/login">500以下</a>&nbsp;&nbsp;
                    <a href="/user/login">500-800</a>&nbsp;&nbsp;
                    <a href="/user/login">800-1000</a>&nbsp;&nbsp;
                    <a href="/user/login">1000-1500</a>&nbsp;&nbsp;
                    <a href="/user/login">1500-2000</a>&nbsp;&nbsp;
                    <a href="/user/login">2000-3000</a>&nbsp;&nbsp;
                    <a href="/user/login">3000-5000</a>&nbsp;&nbsp;
                    <div class="layui-inline">
                        <label class="layui-form-label">范围 </label>
                        <div class="layui-input-inline" style="width: 100px;">
                            <input type="text" name="price_min" placeholder="￥" autocomplete="off" class="layui-input">
                        </div>
                        <div class="layui-form-mid">-</div>
                        <div class="layui-input-inline" style="width: 100px;">
                            <input type="text" name="price_max" placeholder="￥" autocomplete="off" class="layui-input">
                        </div>
                        <input type="submit" value="搜索" class="layui-btn layui-btn-warm"
                               style="margin-left:5px;margin-top: -2px;height: 36px">
                    </div>
                </dd>
            </dl>

            <dl>
                <dt>房型:</dt>
                <dd>
                    <a href="/user/login">一居室</a>&nbsp;&nbsp;
                    <a href="/user/login">二居室</a>&nbsp;&nbsp;
                    <a href="/user/login">三居室</a>&nbsp;&nbsp;
                    <a href="/user/login">四居室</a>&nbsp;&nbsp;
                    <a href="/user/login">五居室</a>&nbsp;&nbsp;
                </dd>
            </dl>

            <dl>
                <dt>更多筛选:</dt>
                <dd>
                    <select name="city" lay-verify="" lay-search style="margin-right: 20px">
                        <option value="普通住宅">普通住宅</option>
                        <option value="公寓">公寓</option>
                        <option value="别墅">别墅</option>
                        <option value="平房">平房</option>
                        <option value="" selected>全部</option>
                    </select>

                    <input type="checkbox" name="" title="冰箱" lay-skin="primary" checked>
                    <label style="margin-right: 15px">冰箱</label>
                    <input type="checkbox" name="" title="空调" lay-skin="primary" checked>
                    <label style="margin-right: 15px">空调</label>
                    <input type="checkbox" name="" title="电视" lay-skin="primary" checked>
                    <label style="margin-right: 15px">电视</label>
                    <input type="checkbox" name="" title="洗衣机" lay-skin="primary" checked>
                    <label style="margin-right: 15px">洗衣机</label>
                    <input type="checkbox" name="" title="热水器" lay-skin="primary" checked>
                    <label style="margin-right: 15px">热水器</label>
                    <input type="checkbox" name="" title="可做饭" lay-skin="primary" checked>
                    <label style="margin-right: 15px">可做饭</label>
                    <input type="checkbox" name="" title="宽带" lay-skin="primary" checked>
                    <label style="margin-right: 15px">宽带</label>
                    <input type="checkbox" name="" title="床" lay-skin="primary" checked>
                    <label style="margin-right: 15px">床</label>
                    <input type="checkbox" name="" title="衣柜" lay-skin="primary" checked>
                    <label style="margin-right: 15px">衣柜</label>
                </dd>
            </dl>
        </div>
        <div class="layui-tab-item">
            <div>房屋类型：
                <select name="city" lay-verify="" lay-search style="margin-right: 20px">
                    <option value="普通住宅">普通住宅</option>
                    <option value="公寓">公寓</option>
                    <option value="别墅">别墅</option>
                    <option value="平房">平房</option>
                    <option value="" selected>全部</option>
                </select>
                <input type="checkbox" name="" title="冰箱" lay-skin="primary">
                <label style="margin-right: 15px">冰箱</label>
                <input type="checkbox" name="" title="空调" lay-skin="primary">
                <label style="margin-right: 15px">空调</label>
                <input type="checkbox" name="" title="电视" lay-skin="primary">
                <label style="margin-right: 15px">电视</label>
                <input type="checkbox" name="" title="洗衣机" lay-skin="primary">
                <label style="margin-right: 15px">洗衣机</label>
                <input type="checkbox" name="" title="热水器" lay-skin="primary">
                <label style="margin-right: 15px">热水器</label>
                <input type="checkbox" name="" title="可做饭" lay-skin="primary">
                <label style="margin-right: 15px">可做饭</label>
                <input type="checkbox" name="" title="宽带" lay-skin="primary">
                <label style="margin-right: 15px">宽带</label>
                <input type="checkbox" name="" title="床" lay-skin="primary">
                <label style="margin-right: 15px">床</label>
                <input type="checkbox" name="" title="衣柜" lay-skin="primary">
                <label style="margin-right: 15px">衣柜</label>
            </div>
        </div>
    </div>
</div>
<hr class="layui-bg-red" style="margin-left: 100px;margin-right: 100px;">

<#--<ul class="flow-default" style="height: 300px;" id="LAY_demo2"></ul>-->
<#--<fieldset class="layui-elem-field layui-field-title" style="margin-top: 50px;">-->
<#--<legend>图片懒加载</legend>-->
<#--</fieldset>-->
<div id="house_list" class="site-demo-flow main">
<#--    <div class="house-item">
        <a class="img" href="javascript:;">
            <img src="/images/upload/1534314370360/1535508281781.jpg" width="180px" height="135px">
        </a>
    &lt;#&ndash; 房屋详细信息 &ndash;&gt;
        <div class="zu-info">
        &lt;#&ndash;标题&ndash;&gt;
            <h3><a target="_blank" title="某某房子" href="javascript:;">某某房子</a></h3>
            <p class="details-item">三室一厅
                <span>|</span>86平米
                <span>|</span>11/33层
                <i class="iicon layui-icon layui-icon-username">士大夫</i>
            </p>
            <address class="details-item">
                <a href="javascript:;">九龙坡</a>
            </address>
            <p class="details-item clearfix">
                <b class="cls-1">整租</b>
                <span class="cls-2">押一付三</span>
            </p>

        </div>
    &lt;#&ndash; 价格 &ndash;&gt;
        <div class="zu-side">
            <p>
                <strong>1700</strong> 元/月
            </p>
        </div>
    </div>-->
    <#--流加载文章列表-->
</div>
<div id="house_list" class="site-demo-flow main-adv">
    <br><br><br>
    <h1 style="text-align: center">广告位</h1>
    <div class="adv">
        <p>
        </p>
    </div>
</div>


</body>
</html>
<script src="/common/js/jquery.min.js" type="text/javascript"></script>
<script src="/common/plugin/layui/layui.js" charset="utf-8"></script>
<script src="/common/js/loadhouse.js" charset="utf-8"></script>
<!-- 注意：如果你直接复制所有代码到本地，上述js路径需要改成你本地的 -->
<script>
    layui.use('flow', function () {
        var flow = layui.flow;

        //获取url参数  返回参数查询部分
        var search=location.search;
        var data={};
        if(search!=""){
            data = getParams(search);
        }

        //流加载列表
        flow.load({
            elem: "#house_list",
            done: function (page, next) {
                showArticle(page, next, data);
            },
            isAuto: false
        });

    });

    function getParams(search){
        var params = search.substr(1);
        var paramArr = params.split("&");
        var data={};
        paramArr.forEach(function(val,key){
            var param = val.split("=");
            data[param[0]]=param[1];
        });
        return data;
    }
</script>