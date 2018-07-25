<!--
* 修改页面
* @author
* @email
* @date 2018-6-13 10:07:04
*-->
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <%@ include file="/common/jsp/resource.jsp" %>
</head>
<body>
<div class="layui-field-box">
    <form class="layui-form" action="">
        <%@ include file="common.jsp" %>
        <input type="hidden" name="id" value="${model.id}">
        <div class="page-footer">
            <div class="btn-list">
                <div class="btnlist">
                    <button class="layui-btn" lay-submit="" lay-filter="submit" data-url="/sysoss/update"><i class="fa fa-floppy-o">&nbsp;</i>保存</button>
                    <button class="layui-btn" onclick="$t.closeWindow()"><i class="fa fa-undo">&nbsp;</i>返回</button>
                </div>
            </div>
        </div>
    </form>
</div>
<script>
    layui.use(['form'], function(){
        var form = layui.form();
        //监听提交
        form.on('submit(submit)', function(data){
            closeWindow();
            Msg.success("添加成功");
            return false;
        });

    });
</script>
</body>
</html>

