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
    <title>级联控件</title>
    <%@ include file="/common/jsp/resource.jsp" %>
</head>
<body>

<div class="layui-tab">
    <ul class="layui-tab-title">
        <li class="layui-this">代码</li>
        <li id="showResult">效果</li>

    </ul>
    <div class="layui-tab-content">
        <div class="layui-tab-item layui-show">
            <code style="margin-top: 4px; display: block;">下拉框控件使用示例</code>
            <textarea class="layui-textarea" rows="24">
                 <form class="layui-form" >

                    <div id="selectId" class="layui-form-item"></div>
                    <a class="layui-btn layui-btn-sm" onclick="getlinkValue(0)">获取值</a>
                    <div id="getvalue"></div>
                    <br>
                    <div id="selectId2" class="layui-form-item"></div>
                    <a class="layui-btn layui-btn-sm" onclick="getlinkValue(1)">获取值</a>
                    <div id="getvalue2"></div>

                </form>

           </textarea>
            <code style="margin-top: 4px; display: block;">下拉框点击监听事件</code>
            <pre class="layui-code">
             <script>
    var $, linkSelect,citys;
    var link;
    $.getJSON("/frontframe/json/area.json", function (r) {
        citys = r;
    })

    var $, $form;

    layui.use(['form', 'linkSelect'], function () {
        $ = layui.jquery;
        $form = layui.form;
        linkSelect = layui.linkSelect;

        //本地数据渲染
        link = linkSelect.render({
            id: 'addRegion',
            elem: '#selectId',
            data: citys,
            lableName: '本地渲染：',			//自定义表单名称    默认：'级联选择'
            placeholderText: '请选择...',		//自定义holder名称    默认：'请选择'
            replaceId: "regionId",				//替换字段id   默认id
            replaceName: "regionName",			//替换字段名称  默认name
            replaceChildren: "children",	//替换字段名称  默认 children
            disabled: false,					//初始禁用         默认false
            selectedArr: [350000, 350300, 350302],	//默认选中数组
            selected: function (item, dom) {
                //选中回调函数
                console.log(item);
                console.log(dom);
            }
        });


        //url渲染
        link2 = linkSelect.render({
            id: 'addRegion2',
            elem: '#selectId2',
            url: '/area/findByParentId',
            method: 'post',
            lableName: '接口渲染：',			//自定义表单名称    默认：'级联选择'
            placeholderText: '请选择...',		//自定义holder名称    默认：'请选择'
            replaceId: "areaId",			//替换字段id 默认id
            replaceName: "areaName",		//替换字段名称 moren
            disabled: false,					//初始禁用 默认false
            selectedArr:[1111130000,1111130300,1111130303],	//默认选中数组
            where: {parentId:"1111111111"},						//url接口自定义参数
            response: {						//url返回参数定义
                statusName: 'code',
                statusCode: 0,
                msgName: 'msg',
                dataName: 'data'
            },
            selected: function (item, dom) {
                //选中回调函数
                console.log(item);
                console.log(dom);
            },
            done: function (res) {
                //url渲染成功回调
                console.log(res);
            },
            error: function (res) {
                //url加载失败回调
                console.log(res);
            }
        });
    });

    //获取值
    function getlinkValue(index) {
        if (index == 0) {
            //$("#getvalue").text(JSON.stringify(linkSelect.getValue("addRegion")));
            $("#getvalue").text(JSON.stringify(link.getValue()));
        } else {
            //$("#getvalue").text(JSON.stringify(linkSelect.getValue("addRegion")));
            $("#getvalue2").text(JSON.stringify(link2.getValue()));
        }
    }

    //重载
    function setlinkReload(index) {
        if (index == 0) {
            linkSelect.reload("addRegion", {selectedArr: [350000, 350300, 350302]});
            //link.reload({selectedArr:[1,11]});
        } else {
            linkSelect.reload("addRegion2", {selectedArr: [1111130000,1111130300,1111130303]});
            //link2.reload({selectedArr:[1,11]});
        }
    }
</script>
           </pre>
        </div>
        <div class="layui-tab-item" id="result">

            <form class="layui-form" >

                <div id="selectId" class="layui-form-item"></div>
                <a class="layui-btn layui-btn-sm" onclick="getlinkValue(0)">获取值</a>
                <div id="getvalue"></div>
                <br>
                <div id="selectId2" class="layui-form-item"></div>
                <a class="layui-btn layui-btn-sm" onclick="getlinkValue(1)">获取值</a>
                <div id="getvalue2"></div>

            </form>

            <script>
                var $, linkSelect,citys;
                var link;
                $.getJSON("/frontframe/json/area.json", function (r) {
                    citys = r;
                })

                var $, $form;

                layui.use(['form', 'linkSelect'], function () {
                    $ = layui.jquery;
                    $form = layui.form;
                    linkSelect = layui.linkSelect;

                    //本地数据渲染
                    link = linkSelect.render({
                        id: 'addRegion',
                        elem: '#selectId',
                        data: citys,
                        lableName: '本地渲染：',			//自定义表单名称    默认：'级联选择'
                        placeholderText: '请选择...',		//自定义holder名称    默认：'请选择'
                        replaceId: "regionId",				//替换字段id   默认id
                        replaceName: "regionName",			//替换字段名称  默认name
                        replaceChildren: "children",	//替换字段名称  默认 children
                        disabled: false,					//初始禁用         默认false
                        selectedArr: [350000, 350300, 350302],	//默认选中数组
                        selected: function (item, dom) {
                            //选中回调函数
                            console.log(item);
                            console.log(dom);
                        }
                    });


                    //url渲染
                    link2 = linkSelect.render({
                        id: 'addRegion2',
                        elem: '#selectId2',
                        url: '/area/findByParentId',
                        method: 'post',
                        lableName: '接口渲染：',			//自定义表单名称    默认：'级联选择'
                        placeholderText: '请选择...',		//自定义holder名称    默认：'请选择'
                        replaceId: "areaId",			//替换字段id 默认id
                        replaceName: "areaName",		//替换字段名称 moren
                        disabled: false,					//初始禁用 默认false
                        selectedArr:[1111130000,1111130300,1111130303],	//默认选中数组
                        where: {parentId:"1111111111"},						//url接口自定义参数
                        response: {						//url返回参数定义
                            statusName: 'code',
                            statusCode: 0,
                            msgName: 'msg',
                            dataName: 'data'
                        },
                        selected: function (item, dom) {
                            //选中回调函数
                            console.log(item);
                            console.log(dom);
                        },
                        done: function (res) {
                            //url渲染成功回调
                            console.log(res);
                        },
                        error: function (res) {
                            //url加载失败回调
                            console.log(res);
                        }
                    });
                });

                //获取值
                function getlinkValue(index) {
                    if (index == 0) {
                        //$("#getvalue").text(JSON.stringify(linkSelect.getValue("addRegion")));
                        $("#getvalue").text(JSON.stringify(link.getValue()));
                    } else {
                        //$("#getvalue").text(JSON.stringify(linkSelect.getValue("addRegion")));
                        $("#getvalue2").text(JSON.stringify(link2.getValue()));
                    }
                }

                //重载
                function setlinkReload(index) {
                    if (index == 0) {
                        linkSelect.reload("addRegion", {selectedArr: [350000, 350300, 350302]});
                        //link.reload({selectedArr:[1,11]});
                    } else {
                        linkSelect.reload("addRegion2", {selectedArr: [1111130000,1111130300,1111130303]});
                        //link2.reload({selectedArr:[1,11]});
                    }
                }
            </script>

        </div>
    </div>
</div>

<script>
    layui.use('element', function () {
    });

    layui.use('code', function () { //加载code模块
        layui.code({encode: true}); //引用code方法
    });
</script>
</body>
</html>
