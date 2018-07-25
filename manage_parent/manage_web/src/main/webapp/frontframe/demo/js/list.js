/**
 * Created by  on 2018-6-20 13:54:57
 *  email   :  qq//
 */
/**数据渲染对象*/
var Render = {
    /**
     * 上移
     * @param primary   主键id
     * @param number    上移条数
     */
    moveTop: function (primary,number) {
        Msg.msg("id:"+primary+" 上移: " + number);

    },
    /**
     * 下移
     * @param primary   主键id
     * @param number    下移条数
     */
    moveBottom: function (primary,number) {
        Msg.msg("id:"+primary+" 下移: " + number);
    },
    //表格渲染前方法
    beforeRender: function () {
        parent.layer.msg("方法渲染前调用方法");
    },
    //复选框点击需要执行的方法
    onCheck: function (data) {
        var isChecked = $(data.othis).hasClass("layui-form-checked");
        if (isChecked) {
            parent.layer.msg("勾选");
        } else {
            parent.layer.msg("取消");
        }
        var filter = $(data.elem).attr("lay-filter");
        //如果是全选
        if (filter == "allChoose") {
            var child = $(data.elem).parents('table').find('tbody input[type="checkbox"]');
            child.each(function (index, item) {
                //主键值
                var _primary = $(item).attr("primary");
            });
        }
    },
    //表格渲染后方法
    afterRender: function () {
        parent.layer.msg("方法渲染后调用方法");
    },
    /**
     * 渲染状态列
     * @param rowdata    行数据
     * @param renderData 渲染后的列
     * @param index
     * @param value      当前对象值
     */
    customState: function (rowdata, renderData, index, value) {
        $(this).find("[class='we']");
        if (value == "启用") {
            return '<span style="color:green">' + value + '</span>';
        }
        if (value == "禁用") {
            return '<span style="color:red">' + value + '</span>';
        }
        return value;
    },
    /**
     * @param rowdata    行数据
     * @param renderData 渲染后的列
     * @description      详情按钮渲染
     */
    info: function (rowdata, renderData) {
        var btn = ' <button  onclick="Msg.success(\'' + "操作成功" + '\')" class="layui-btn layui-btn-mini">详情</button>';
        return btn;
    },
    /**
     * @param rowdata    行数据
     * @param renderData 渲染后的列
     * @description      修改按钮渲染
     */
    edit: function (rowdata, renderData) {
        var btn = ' <button  onclick="Msg.success(\'' + "操作成功" + '\')" class="layui-btn layui-btn-mini">修改</button>';
        return btn;
    },
    /**
     * @param rowdata    行数据
     * @param renderData 渲染后的列
     * @description     删除按钮渲染
     */
    delete: function (rowdata, renderData) {
        var btn = ' <button  onclick="Msg.success(\'' + "操作成功" + '\')" class="layui-btn layui-btn-mini layui-btn-delete">删除</button>';
        return btn;
    },
    /**
     * @param rowdata    行数据
     * @param renderData 渲染后的列
     * @description     启用禁用按钮渲染
     */
    state: function (rowdata, renderData) {

        if (rowdata.state == '0') {
            return ' <button onclick="Msg.success(\'' + "操作成功" + '\')"' +
                '  class="layui-btn layui-btn-mini layui-btn-green">启用</button>';
        }
        if (rowdata.state == '1') {
            return ' <button  onclick="Msg.success(\'' + "操作成功" + '\')" ' +
                'class="layui-btn layui-btn-mini layui-btn-danger">禁用</button>';
        }
        return "";
    }
};
