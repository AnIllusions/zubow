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

<form class="layui-form" action="">
    <div class="layui-form-item">
        <label class="layui-form-label">用户名</label>
        <div class="layui-form-mid layui-word-aux">${currentUser.name}</div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">账户余额</label>
        <div class="layui-form-mid layui-word-aux">${currentUser.money}<span style="margin-left: 10px">元</span></div>
    </div>
<#---->
    <#if currentUser.identity == null>
    <div class="layui-form-item">
        <label class="layui-form-label">身份证</label>
        <div class="layui-input-block">
            <input type="text" name="identity" lay-verify="identity" placeholder="请完善身份证" autocomplete="off"
                   class="layui-input">
        </div>
    </div>
    <#else>
    <div class="layui-form-item">
        <label class="layui-form-label">身份证</label>
        <div class="layui-form-mid layui-word-aux">${currentUser.identity}</div>
    </div>
    </#if>

    <div class="layui-form-item">
        <label class="layui-form-label">电话</label>
        <div  class="layui-form-update_telmid layui-word-aux">
            <span id="tel">${currentUser.tel}</span>
            <span id="update_tel" class="layui-btn layui-btn-primary">修改</span>
        </div>
    </div>

    <div class="layui-form-item">
        <label class="layui-form-label">选择框</label>
        <div class="layui-input-block">
            <select name="city" lay-verify="required">
                <option value=""></option>
                <option value="0">北京</option>
                <option value="1">上海</option>
                <option value="2">广州</option>
                <option value="3">深圳</option>
                <option value="4">杭州</option>
            </select>
        </div>
    </div>
<#--数组接受-->
    <div class="layui-form-item">
        <label class="layui-form-label">复选框</label>
        <div class="layui-input-block">
            <input type="checkbox" name="like[write]" title="写作">
            <input type="checkbox" name="like[read]" title="阅读" checked>
            <input type="checkbox" name="like[dai]" title="发呆">
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">开关</label>
        <div class="layui-input-block">
            <input type="checkbox" name="switch" lay-skin="switch">
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">单选框</label>
        <div class="layui-input-block">
            <input type="radio" name="sex" value="男" title="男">
            <input type="radio" name="sex" value="女" title="女" checked>
        </div>
    </div>
    <div class="layui-form-item layui-form-text">
        <label class="layui-form-label">文本域</label>
        <div class="layui-input-block">
            <textarea name="desc" placeholder="请输入内容" class="layui-textarea"></textarea>
        </div>
    </div>
    <div class="layui-form-item">
        <div class="layui-input-block">
            <button class="layui-btn" lay-submit lay-filter="formDemo">立即提交</button>
            <button type="reset" class="layui-btn layui-btn-primary">重置</button>
        </div>
    </div>
</form>


</body>
</html>
<script src="/common/js/jquery.min.js" type="text/javascript"></script>
<script src="/common/plugin/layui/layui.js" charset="utf-8"></script>

<script>
    //Demo
    layui.use(['form', 'layer'], function () {
        var form = layui.form;
        var layer = layui.layer;
        var $ = layui.jquery;

        //监听提交
        form.on('submit(formDemo)', function (data) {
            layer.msg(JSON.stringify(data.field));
            return false;
        });

        //prompt层

        $("#update_tel").click(function () {
            layer.prompt(function(tel, index, elem){
                if (!isPhoneNo(tel)){
                    layer.msg("请输入正确");
                    return false;
                }
                var tel1 = $("#tel");
                $.ajax({
                    url: '/user/updateTel',
                    dataType: 'json', //服务器返回类型
                    data: "tel="+tel,
                    type: 'get',
                    contentType: 'application/json;charset=UTF-8',  //发送到服务器的编码格式
                    success: function (val) {
                        if (val.flag) {
                            tel1.text("");
                            tel1.append(val.msg);
                            layer.msg("修改成功");
                        }else{
                            tel1.text("");
                            tel1.append(val.msg);
                            layer.msg("修改失败");
                        }
                    }
                });
                layer.close(index);
                return false;
            });
        });
    });

    // 验证手机号
    function isPhoneNo(phone) {
        var pattern = /^1[34578]\d{9}$/;
        return pattern.test(phone);
    }
</script>