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

<form class="layui-form" action="">
    <div class="layui-form-item">
        <label class="layui-form-label">地址</label>
        <div class="layui-input-block">
            <input type="text" name="title" required  lay-verify="required" placeholder="请输入地址" autocomplete="off" class="layui-input">
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
            <input type="title" name="password" required lay-verify="required" placeholder="请输入面积" autocomplete="off" class="layui-input">
        </div>
        <div class="layui-form-mid layui-word-aux">㎡</div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">楼层</label>
        <div class="layui-input-inline">
            <input type="title" name="password" required lay-verify="required" placeholder="请输入楼层" autocomplete="off" class="layui-input">
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
        <label class="layui-form-label">房屋配套</label>
        <div class="layui-input-block">
            <input type="checkbox" name="like[write]" title="电视" checked>
            <input type="checkbox" name="like[read]" title="冰箱">
            <input type="checkbox" name="like[dai]" title="空调">
            <input type="checkbox" name="like[dai]" title="洗衣机">
            <input type="checkbox" name="like[dai]" title="热水器">
            <input type="checkbox" name="like[dai]" title="可做饭">
            <input type="checkbox" name="like[dai]" title="宽带">
            <input type="checkbox" name="like[dai]" title="床">
            <input type="checkbox" name="like[dai]" title="衣柜">
        </div>
    </div>

    <div class="layui-form-item">
        <label class="layui-form-label">租赁方式</label>
        <div class="layui-input-block">
            <input type="radio" name="leasehold" value="整租" title="整租" checked>
            <input type="radio" name="leasehold" rvalue="合租" title="合租">
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">租金</label>
        <div class="layui-input-inline">
            <input type="title" name="password" required lay-verify="required" placeholder="请输入租金" autocomplete="off" class="layui-input">
        </div>
        <div class="layui-form-mid layui-word-aux">元</div>
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
            <button type="button" class="layui-btn" id="test1">上传图片</button>

            <div class="layui-upload-list">
                <img class="layui-upload-img" id="demo1">
                <p id="demoText"></p>
            </div>
        </div>
    </div>


    <div class="layui-form-item layui-form-text">
        <label class="layui-form-label">房屋概要</label>
        <div class="layui-input-block">
            <textarea name="desc" placeholder="请输入房屋概要" class="layui-textarea"></textarea>
        </div>
    </div>


<#--————————————-->

    <div class="layui-form-item">
        <div class="layui-input-block">
            <button class="layui-btn" lay-submit lay-filter="formDemo">立即提交</button>
            <button type="reset" class="layui-btn layui-btn-primary">重置</button>
        </div>
    </div>
</form>

</body>
</html>
<script src="/common/plugin/layui/layui.all.js" charset="utf-8"></script>
<script src="/common/js/jquery.min.js" type="text/javascript"></script>
<script src="/common/plugin/layui/layui.js" charset="utf-8"></script>
<script>
    //Demo
    layui.use('form', function(){
        var form = layui.form;
        //监听提交
        form.on('submit(formDemo)', function(data){
            layer.msg(JSON.stringify(data.field));
            return false;
        });
    });
    layui.use('upload', function(){
        var $ = layui.jquery
                ,upload = layui.upload;
        //普通图片上传
        var uploadInst = upload.render({
            elem: '#test1'
            ,url: '/upload/'
            ,before: function(obj){
                //预读本地文件示例，不支持ie8
                obj.preview(function(index, file, result){
                    $('#demo1').attr('src', result); //图片链接（base64）
                });
            }
            ,done: function(res){
                //如果上传失败
                if(res.code > 0){
                    return layer.msg('上传失败');
                }
                //上传成功
            }
            ,error: function(){
                //演示失败状态，并实现重传
                var demoText = $('#demoText');
                demoText.html('<span style="color: #FF5722;">上传失败</span> <a class="layui-btn layui-btn-xs demo-reload">重试</a>');
                demoText.find('.demo-reload').on('click', function(){
                    uploadInst.upload();
                });
            }
        });
</script>