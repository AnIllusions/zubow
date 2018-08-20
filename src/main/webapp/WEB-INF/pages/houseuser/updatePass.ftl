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
<div>
<form class="layui-form">

    <div class="layui-form-item">
        <label class="layui-form-label">输入新密码</label>
        <div class="layui-form-mid layui-word-aux">
            <input type="password" name="password" required  lay-verify="required" placeholder="请输入新密码" autocomplete="off" class="layui-input">
        </div>
    </div>

    <div class="layui-form-item">
        <label class="layui-form-label">确认密码</label>
        <div class="layui-form-mid layui-word-aux">
            <input type="password" name="password1" required  lay-verify="required" placeholder="确认密码" autocomplete="off" class="layui-input">
        </div>
    </div>

    <div class="layui-form-item">
        <div class="layui-input-block">
            <button class="layui-btn" lay-submit lay-filter="update">立即提交</button>
            <button type="reset" class="layui-btn layui-btn-primary">重置</button>
        </div>
    </div>
</form>
</div>
</body>
</html>
<script src="/common/plugin/layui/layui.all.js" charset="utf-8"></script>
<script src="/common/js/jquery.min.js" type="text/javascript"></script>
<script>
    layui.use(['form','layer'],function () {
        var form = layui.form;
        var layer = layui.layer;

        form.on('submit(update)',function (data) {
            if (data.field['password'] != data.field['password1']){
                layer.msg("密码不一致");
                return false;
            }
        });
        form.render();

    })

</script>