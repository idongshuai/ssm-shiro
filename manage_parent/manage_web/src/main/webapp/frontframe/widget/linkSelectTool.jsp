<%--
  Created by IntelliJ IDEA.
  User:
  Date: 2018/6/10
  Time: 17:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>联动选择框控件</title>
    <%@ include file="/common/jsp/resource.jsp" %>
</head>
<body>
<div class="layui-input-inline">
    <button class="layui-btn" onclick="submitCode()">提交代码</button>
</div>
<div class="layui-tab">
    <ul class="layui-tab-title">
        <li class="layui-this">代码</li>
        <li id="showResult">效果</li>
        <li>参数详解</li>

    </ul>
    <div class="layui-tab-content">
        <div class="layui-tab-item layui-show">
            <code style="margin-top: 4px; display: block;">联动选择框使用示例</code>
            <textarea class="layui-textarea" rows="15">

                <form class="layui-form " action="">
                     <div class="layui-form-item">

                          <div cyType="linkSelectTool" cyProps="url:'/area/normalList/',topId:'0000000000',name:'parentAreaId[]'"
                               value="1111111111,2111110000,1111110000" class="layui-input-inline"></div>

                     </div>
                </form>

           </textarea>
            <code style="margin-top: 4px; display: block;">联动选择框点击监听事件</code>
            <pre class="layui-code">
             <script>
                      layui.use(['form'], function () {
                          var form = layui.form();
                          //监听联动选择框
                          form.on('select(link)', function (data) {
                              console.log(data.elem); //得到checkbox原始DOM对象
                              console.log(data.value); //复选框value值，也可以通过data.elem.value得到
                              console.log(data.othis); //得到美化后的DOM对象
                          });
                      });
            </script>
           </pre>
        </div>
        <div class="layui-tab-item" id="result">

            <form class="layui-form " action="">
                <div class="layui-form-item">

                    <div cyType="linkSelectTool" cyProps="url:'/area/normalList/',topId:'0000000000',name:'parentAreaId[]'"
                         value="1111111111,2111110000,1111110000" class="layui-input-inline"></div>

                </div>
            </form>

        </div>
        <div class="layui-tab-item">
            <table class="layui-table">
                <thead>
                <tr>
                    <th>组件参数</th>
                    <th>描述</th>
                    <th>默认值</th>
                    <th>代码示例</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td>cyType</td>
                    <td>控件类型</td>
                    <td><span style="color:red">必填</span></td>
                    <td>cyType="linkSelectTool"</td>
                </tr>
                <tr>
                    <td>value</td>
                    <td>下拉框默认值(多级以逗号隔开)</td>
                    <td>null</td>
                    <td>value="1111111111,2111110000" || value="\${model.levelArea}"</td>
                </tr>
                <tr>
                    <td>cyProps:url</td>
                    <td>数据源</td>
                    <td><span style="color:red">必填</span></td>
                    <td>cyProps="url:'/area/normalList/0000000000" </td>
                </tr>
                <tr>
                    <td>cyProps:topId</td>
                    <td>顶级id</td>
                    <td><span style="color:red">必填</span></td>
                    <td>cyProps="topId:'0000000000"|| cyProps="topId:'\${model.topAreaId}"</td>
                </tr>
                <tr>
                    <td>cyProps:name</td>
                    <td>对应的字段名，用于表单提交</td>
                    <td>null</td>
                    <td>cyProps="name:'parentAreaId[]'"</td>
                </tr>
                <tr>
                    <td>cyProps:tips</td>
                    <td>提示内容</td>
                    <td>"请选择"</td>
                    <td>cyProps="tips:'false'" (不显示提示框)</td>
                </tr>
                </tbody>
            </table>
        </div>
    </div>
</div>
</div>
<script>
    layui.use('form', function () {
        var form = layui.form();
        form.render("select");
        //监听联动选择框
        form.on('select(link)', function (data) {
            Msg.info("code: "+data.value);
        });

    });
    layui.use('element', function () {
    });
    function submitCode() {
        var code = $("textarea").val();
        $("#result").html(code);
        var linkSelect = $("#result").find("[cyType='linkSelectTool']");
        for (var i = 0; i < linkSelect.length; i++) {
            $(linkSelect[i]).linkSelectTool();
        }
        layui.use('form', function () {
            var form = layui.form();
            form.render();
        });
        Msg.success("代码提交成功,请查看效果!");
        Tips.info("点此查看效果",$("#showResult"));
    }

    layui.use('code', function(){ //加载code模块
        layui.code({encode: true}); //引用code方法
    });
</script>
</body>
</html>
