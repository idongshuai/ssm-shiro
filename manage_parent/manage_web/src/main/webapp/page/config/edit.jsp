<!--
* 修改页面
* @author
* @email qq
* @date 2018-6-02 16:47:30
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

        <input name="id" value="${model.id}" type="hidden">

        <div class="layui-form-item">
            <label class="layui-form-label">参数名<span class="span_must">&nbsp;*</span></label>
            <div class="layui-input-normal">
                <input type="text" name="code" value="${model.code}" maxlength="30" lay-verify="required"
                       placeholder="请输入参数名" class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">参数值<span class="span_must">&nbsp;*</span></label>
            <div class="layui-input-normal">
                <input type="text" name="value" maxlength="300" value="${model.value}" lay-verify="required"
                       placeholder="请输入参数值" class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">状态<span class="span_must">&nbsp;*</span></label>
            <div class="layui-input-normal">
                <div cyType="radioTool" cyProps="codeName:'state'" name="status"
                     value="1" class="layui-input-inline"></div>
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">备注<span class="span_must">&nbsp;*</span></label>
            <div class="layui-input-normal">
                <input type="text" name="remark" maxlength="300" value="${model.remark}" lay-verify="required"
                       placeholder="备注" class="layui-input">
            </div>
        </div>
        <div class="page-footer">
            <div class="btn-list">
                <div class="btnlist">
                    <button class="layui-btn" lay-submit="" lay-filter="submit" data-url="/sys/config/update">
                        <i class="fa fa-floppy-o">&nbsp;</i>保存
                    </button>
                    <button class="layui-btn" onclick="$t.closeWindow();"><i class="fa fa-undo">&nbsp;</i>返回</button>
                </div>
            </div>
        </div>
    </form>
</div>

</body>
</html>
