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
        详细情况
        <#assign house = Request.get('house') />
        ${house.id}
</body>
</html>
<script src="/common/plugin/layui/layui.all.js" charset="utf-8"></script>
<script src="/common/js/jquery.min.js" type="text/javascript"></script>
<script src="/common/plugin/layui/layui.js" charset="utf-8"></script>
<script src="/common/js/loadhouse.js" charset="utf-8"></script>
<!-- 注意：如果你直接复制所有代码到本地，上述js路径需要改成你本地的 -->
<script>
    layui.use('flow', function () {
        var flow = layui.flow;
        //流加载列表
        flow.load({
            elem: "#house_list",
            done: function (page, next) {
                showArticle(page, next, data);
            },
            isAuto: false
        });
    });
</script>