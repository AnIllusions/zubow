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
<#assign currentUser = Session["currentUser"]>
<form class="layui-form" action="/house/houseAdd" method="post">
    <div class="layui-form-item">
        <label class="layui-form-label">地址</label>
        <div class="layui-input-block">
            <input type="text" name="address" required  lay-verify="required" placeholder="请输入地址" autocomplete="off" class="layui-input">
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">户型</label>
        <div class="layui-input-block">
            <input type="radio" name="housetype" value="一室一厅" title="一室一厅" checked>
            <input type="radio" name="housetype" value="二室一厅" title="二室一厅">
            <input type="radio" name="housetype" value="三室一厅" title="三室一厅">
            <input type="radio" name="housetype" value="三室二厅" title="三室二厅">
            <input type="radio" name="housetype" value="四室一厅" title="四室一厅">
            <input type="radio" name="housetype" value="四室二厅" title="四室二厅">

        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">面积</label>
        <div class="layui-input-inline">
            <input type="title" name="area" required lay-verify="number" placeholder="请输入面积" autocomplete="off" class="layui-input">
        </div>
        <div class="layui-form-mid layui-word-aux">㎡</div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">当前楼层</label>
        <div class="layui-input-inline" style="width: 100px;">
            <input type="text" name="floor" placeholder="数字" autocomplete="off" class="layui-input" lay-verify="number">
        </div>
        <div class="layui-form-mid">总楼层</div>
        <div class="layui-input-inline" style="width: 100px;">
            <input type="text" name="floor" placeholder="数字" autocomplete="off" class="layui-input" lay-verify="number">
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">装修</label>
        <div class="layui-input-block">
            <input type="radio" name="decoration" value="精装" title="精装" checked>
            <input type="radio" name="decoration" value="简装" title="简装">
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">租金</label>
        <div class="layui-input-inline">
            <input type="title" name="rent" required lay-verify="number" placeholder="请输入租金" autocomplete="off" class="layui-input">
        </div>
        <div class="layui-form-mid layui-word-aux">元</div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">房屋配套</label>
        <div class="layui-input-block">
            <input type="checkbox" name="configuration" value="冰箱" title="冰箱">
            <input type="checkbox" name="configuration" value="空调" title="空调">
            <input type="checkbox" name="configuration" value="洗衣机"title="洗衣机">
            <input type="checkbox" name="configuration" value="热水器"title="热水器">
            <input type="checkbox" name="configuration" value="可做饭"title="可做饭">
            <input type="checkbox" name="configuration" value="宽带"title="宽带">
            <input type="checkbox" name="configuration" value="床"title="床">
            <input type="checkbox" name="configuration" value="衣柜"title="衣柜">
        </div>
    </div>

    <div class="layui-form-item">
        <label class="layui-form-label">租赁方式</label>
        <div class="layui-input-block">
            <input type="radio" name="leasehold" value="0" title="整租" checked>
            <input type="radio" name="leasehold" value="1" title="合租">
        </div>
    </div>

    <div class="layui-form-item">
        <label class="layui-form-label">付押类型</label>
        <div class="layui-input-block">
            <input type="radio" name="renttype" value="面议" title="面议" checked>
            <input type="radio" name="renttype" value="付一押一" title="付一押一">
            <input type="radio" name="renttype" value="付三押一" title="付三押一">
            <input type="radio" name="renttype" value="付三押二" title="付三押二">
            <input type="radio" name="renttype" value="半年付" title="半年付">
        </div>
    </div>

    <div class="layui-form-item">
        <label class="layui-form-label">房屋图片</label>
        <div class="layui-upload">
            <button type="button" class="layui-btn" id="upload_picture">上传图片</button>

            <div class="layui-upload-list">
                <img class="layui-upload-img" id="demo1">
                <p id="demoText"></p>
            </div>
        </div>
    </div>


    <div class="layui-form-item layui-form-text">
        <label class="layui-form-label">房屋概要</label>
        <div class="layui-input-block">
            <textarea name="remark" placeholder="请输入房屋概要" class="layui-textarea"></textarea>
        </div>
    </div>


<#--————————————-->

    <div class="layui-form-item">
        <div class="layui-input-block">
            <button class="layui-btn" lay-submit lay-filter="addHouse" id="addHouse">立即提交</button>
            <button type="reset" class="layui-btn layui-btn-primary">重置</button>
        </div>
    </div>
</form>

</body>
</html>
<script src="/common/plugin/layui/layui.all.js" charset="utf-8"></script>
<script src="/common/js/jquery.min.js" type="text/javascript"></script>
<script>
    //Demo
    layui.use(['upload','form'], function(){
        var upload = layui.upload;
        var form = layui.form;
        var $ = layui.jquery;
        //执行实例
        var uploadInst = upload.render({
            elem: '#upload_picture' //绑定元素
            ,url: '' //上传接口
            ,done: function(res){
                //上传完毕回调
            }
            ,error: function(){
                //请求异常回调
            }
        });
/*

        form.on('submit(addHouse)',function (data) {
            $.ajax({
                url:'/house/houseAdd',
                type:'post',
                data:data,
                dataType:'json',
                success:function (infor) {

                }
            })
        })
*/






    });
</script>