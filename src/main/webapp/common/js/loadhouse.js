function showArticle(page,next,data){
    //初始化每页显示多少条
    var limit=5;
    var list=[];
    $.ajax({
        url:"/tenant/houseUserList?page="+page+"&limit="+limit,
        data:data,
        success:function(data){
            if(data.code==0){
                layui.each(data.data,function(key,item){
                    //加载文章url
                    var url="/tenant/house/"+item.id;

                    var photo="";
                    if(item.houseImageVos[0]!=null){
                        photo+=" <img src=\""+item.houseImageVos[0].imageurl+"\" width=\"180px\" height=\"135px\">";
                    }else {
                        photo="<h2 style='text-align: center;height: 100px;line-height: 100px'>未上传</h2>";
                    }

                    var rentType = "";
                    if (item.renttype == 1){
                        rentType="合租";
                    }else {
                        rentType="整租";
                    }

                    /*楼层*/
                    var houseHeight=item.floor;
                    var height =houseHeight.split(',');
                    var l = height[0];
                    var h = height[1];


                   /* //加载标签和是否置顶
                    var topTag="";
                    if(item.isTop){
                        topTag+="<span class=\"layui-badge layui-bg-cyan\">置顶</span>";
                    }*/
                    //加载文章列表
                    var content;
                    if(item.status==1){
                        content="<div class=\"house-item\">\n" +
                            "        <a target='_blank' class=\"img\" href=\""+url+"\">\n" +photo+
                            "        </a>\n" +
                            "        <div class=\"zu-info\">\n" +
                            "            <h3><a target=\"_blank\" title=\""+item.address+"\" href=\"javascript:;\">"+item.address+"</a></h3>\n" +
                            "            <p class=\"details-item\">"+item.housetype+"\n" +
                            "                <span>|</span>"+item.area+"&nbsp;㎡\n" +
                            "                <span>|</span>当前"+l+"&nbsp;&nbsp;/&nbsp;&nbsp;共"+h+"层\n" +
                            "                <i class=\"iicon layui-icon layui-icon-username\">"+item.houseuserName+"</i>\n" +
                            "            </p>\n" +
                            "            <address class=\"details-item\">\n" +
                            "                <a href=\"javascript:;\">"+item.city+"</a>\n" +
                            "            </address>\n" +
                            "            <p class=\"details-item clearfix\">\n" +
                            "                <b class=\"cls-1\">"+rentType+"</b>\n" +
                            "                <span class=\"cls-2\">"+item.renttype+"</span>\n" +
                            "            </p>\n" +
                            "\n" +
                            "        </div>\n" +
                            "        <div class=\"zu-side\">\n" +
                            "            <p>\n" +
                            "                <strong>"+item.rent+"</strong> 元/月\n" +
                            "            </p>\n" +
                            "        </div>\n" +
                            "    </div>";
                    }
                    list.push(content);
                });
                //计算页数 count/limit
                var pages = Math.ceil(data.count/limit);
                $(".sum-font").text(data.count);

                next(list.join(''),page<pages);
            }
            else{
                layer.msg("加载失败,请稍后重试~",{icon:5});
            }
        }
    });
}