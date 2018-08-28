<!DOCTYPE html>
<html lang="cn">
<head>
    <meta charset="UTF-8">
    <title>选房</title>
</head>
<style>
    .ulli li{
        float: left;
    }
    .sel:hover{
        color: orange   ;
    }
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

<div style="width:140px ;margin-left: 100px;float: left">
    <a href="/user/login" style="color: red; font-size: 20px; line-height: 60px;">ZUBOW | 租房</a>
</div>

<div class="panel-search" style="float: right;margin-right:100px;margin-top: 40px" >

    <form>

        <input class="input-inline" type="text" size="50" style="height: 30px">
        <input type="submit" value="搜索" class="layui-btn layui-btn-warm"
               style="margin-left:-5px;margin-top: -3px;height: 34px" >
    </form>
</div>



<div class="layui-tab layui-tab-card" style="margin-top: 100px;width: 1200px;margin-left: 100px;margin-right: auto">






    <ul class="layui-tab-title">
        <li class="layui-this">租房类型</li>
        <li>租金</li>
        <li>房型</li>
        <li>更多筛选</li>
    </ul>
    <div class="layui-tab-content" style="height: 50%;">
        <div class="layui-tab-item layui-show">
            <a href="/user/login" class="sel" >整租</a>&nbsp;&nbsp;
            <a href="/user/login" class="sel">合租</a>&nbsp;&nbsp;
        </div>
        <div class="layui-tab-item">
            <a href="/user/login" class="sel" >500以下</a>&nbsp;&nbsp;
            <a href="/user/login" class="sel">500-800</a>&nbsp;&nbsp;
            <a href="/user/login" class="sel">800-1000</a>&nbsp;&nbsp;
            <a href="/user/login" class="sel">1000-1500</a>&nbsp;&nbsp;
            <a href="/user/login" class="sel">1500-2000</a>&nbsp;&nbsp;
            <a href="/user/login" class="sel">2000-3000</a>&nbsp;&nbsp;
            <a href="/user/login" class="sel">3000-5000</a>&nbsp;&nbsp;
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
                       style="margin-left:5px;margin-top: -2px;height: 36px" >
            </div>
        </div>
        <div class="layui-tab-item">
            <a href="/user/login" class="sel" >一居室</a>&nbsp;&nbsp;
            <a href="/user/login" class="sel">二居室</a>&nbsp;&nbsp;
            <a href="/user/login" class="sel">三居室</a>&nbsp;&nbsp;
            <a href="/user/login" class="sel">四居室</a>&nbsp;&nbsp;
            <a href="/user/login" class="sel">五居室</a>&nbsp;&nbsp;
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

                <input type="checkbox" name="" title="冰箱" lay-skin="primary" checked >
                <label style="margin-right: 15px">冰箱</label>
                <input type="checkbox" name="" title="空调" lay-skin="primary" checked >
                <label style="margin-right: 15px">空调</label>
                <input type="checkbox" name="" title="电视" lay-skin="primary" checked >
                <label style="margin-right: 15px">电视</label>
                <input type="checkbox" name="" title="洗衣机" lay-skin="primary" checked >
                <label style="margin-right: 15px">洗衣机</label>
                <input type="checkbox" name="" title="热水器" lay-skin="primary" checked >
                <label style="margin-right: 15px">热水器</label>
                <input type="checkbox" name="" title="可做饭" lay-skin="primary" checked >
                <label style="margin-right: 15px">可做饭</label>
                <input type="checkbox" name="" title="宽带" lay-skin="primary" checked >
                <label style="margin-right: 15px">宽带</label>
                <input type="checkbox" name="" title="床" lay-skin="primary" checked >
                <label style="margin-right: 15px">床</label>
                <input type="checkbox" name="" title="衣柜" lay-skin="primary" checked >
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
<div class="site-demo-flow" id="LAY_demo3" style="margin-left: 100px">
    <img lay-src="https://gw.alicdn.com/bao/uploaded/i2/701696736/TB2PNl5ahQa61Bjy0FhXXaalFXa_!!701696736.jpg_400x400q90.jpg?t=1535335143134">
    <img lay-src="https://gw.alicdn.com/bao/uploaded/i2/162734861/TB2V5rsX_gc61BjSZFkXXcTkFXa_!!162734861.jpg_400x400q90.jpg?t=1535335143134">
    <img lay-src="https://gw.alicdn.com/bao/uploaded/i4/69476562/TB2htq4XTka61BjSszfXXXN8pXa_!!69476562.jpg_400x400q90.jpg?t=1535335143134">
    <img lay-src="https://gw.alicdn.com/bao/uploaded/i1/180558071/TB2sy6jXMQc61BjSZFGXXa1DFXa_!!180558071.jpg_400x400q90.jpg?t=1535335143134">
    <img lay-src="https://gw.alicdn.com/bao/uploaded/i2/701696736/TB2PNl5ahQa61Bjy0FhXXaalFXa_!!701696736.jpg_400x400q90.jpg?t=1535335143134">
    <img lay-src="https://gw.alicdn.com/bao/uploaded/i3/285892163/TB2qu2HX9Zb61BjSZPfXXaU.pXa_!!285892163.jpg_400x400q90.jpg?t=1535335143134">
    <img lay-src="https://gw.alicdn.com/bao/uploaded/i2/704998060/TB2S.gAXTgc61BjSZFkXXcTkFXa_!!704998060.jpg_400x400q90.jpg?t=1535335143134">
    <img lay-src="https://gw.alicdn.com/bao/uploaded/i3/117202952/TB25lckX_AX61Bjy0FcXXaSlFXa_!!117202952.jpg_400x400q90.jpg?t=1535335143134">
    <img lay-src="https://gw.alicdn.com/bao/uploaded/i2/162734861/TB2qijoX9Zb61BjSZPfXXaU.pXa_!!162734861.jpg_400x400q90.jpg?t=1535335143134">
    <img lay-src="https://gw.alicdn.com/bao/uploaded/i3/96216586/TB2S7EfXHMc61BjSZFFXXaDLFXa_!!96216586.jpg_400x400q90.jpg?t=1535335143134">
    <img lay-src="https://gw.alicdn.com/bao/uploaded/i8/TB1jSSFNFXXXXcoXFXXYXGcGpXX_M2.SS2_400x400q90.jpg?t=1535335143134">
    <img lay-src="https://gw.alicdn.com/bao/uploaded/i2/162734861/TB2ylbsX37c61BjSZFKXXb6hFXa_!!162734861.jpg_400x400q90.jpg?t=1535335143134">
    <img lay-src="https://gw.alicdn.com/bao/uploaded/i2/117202952/TB2FdyZajUd61BjSZPcXXc6hXXa_!!117202952.jpg_400x400q90.jpg?t=1535335143134">
    <img lay-src="https://gw.alicdn.com/bao/uploaded/i4/777105914/TB2t.qbXZwb61Bjy0FfXXXvlpXa_!!777105914.jpg_400x400q90.jpg?t=1535335143134">
    <img lay-src="https://gw.alicdn.com/bao/uploaded/i4/TB1XzupNFXXXXcpXXXXXXXXXXXX_!!0-item_pic.jpg_400x400q90.jpg?t=1535335143134">
</div>



</body>
</html>
<script src="/common/plugin/layui/layui.all.js" charset="utf-8"></script>
<script src="/common/js/jquery.min.js" type="text/javascript"></script>
<script src="/common/plugin/layui/layui.js" charset="utf-8"></script>
<!-- 注意：如果你直接复制所有代码到本地，上述js路径需要改成你本地的 -->
<script>
    layui.use('flow', function(){
        var flow = layui.flow;

        flow.load({
            elem: '#LAY_demo1' //流加载容器
            ,scrollElem: '#LAY_demo1' //滚动条所在元素，一般不用填，此处只是演示需要。
            ,done: function(page, next){ //执行下一页的回调

                //模拟数据插入
                setTimeout(function(){
                    var lis = [];
                    for(var i = 0; i < 8; i++){
                        lis.push('<li>'+ ( (page-1)*8 + i + 1 ) +'</li>')
                    }

                    //执行下一页渲染，第二参数为：满足“加载更多”的条件，即后面仍有分页
                    //pages为Ajax返回的总页数，只有当前页小于总页数的情况下，才会继续出现加载更多
                    next(lis.join(''), page < 10); //假设总页数为 10
                }, 500);
            }
        });

        flow.load({
            elem: '#LAY_demo2' //流加载容器
            ,scrollElem: '#LAY_demo2' //滚动条所在元素，一般不用填，此处只是演示需要。
            ,isAuto: false
            ,isLazyimg: true
            ,done: function(page, next){ //加载下一页
                //模拟插入
                setTimeout(function(){
                    var lis = [];
                    for(var i = 0; i < 6; i++){
                        lis.push('<li><img lay-src="//s17.mogucdn.com/p2/161011/upload_279h87jbc9l0hkl54djjjh42dc7i1_800x480.jpg?v='+ ( (page-1)*6 + i + 1 ) +'"></li>')
                    }
                    next(lis.join(''), page < 6); //假设总页数为 6
                }, 500);
            }
        });

        //按屏加载图片
        flow.lazyimg({
            elem: '#LAY_demo3 img'
            ,scrollElem: '#LAY_demo3' //一般不用设置，此处只是演示需要。
        });

    });
</script>
</body>
</html>
