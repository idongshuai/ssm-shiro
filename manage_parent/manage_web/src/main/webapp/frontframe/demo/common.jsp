<!--
* 公用页面
* @author
* @email
* @date 2018-6-13 10:07:04
*-->
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<div class="layui-form-item">
    <label class="layui-form-label">姓名<span class="label_span">:</span></label>
    <div class="layui-input-normal">
        <input type="text" name="bucket" maxlength="50" value=""
               placeholder="请输入姓名" class="layui-input">
    </div>
</div>
<div class="layui-form-item">
    <label class="layui-form-label">性别<span class="span_must">*</span></label>
    <div cyType="radioTool" cyProps="enumName:'SexEnum',disabled:'0',filter:'sex'" name="sex1"
         value="1" class="layui-input-inline"></div>

</div>

<div class="layui-form-item">
    <label class="layui-form-label">城市等级<span class="span_must">*</span></label>
    <div cyType="checkboxTool" cyProps="codeName:'areaLevel',disabled:'1',filter:'demo',allBtn:'true'"
         name="sex2" value="1,3" class="layui-input-inline"></div>
</div>

<div class="layui-form-item">
    <label class="layui-form-label">爱好<span class="span_must">*</span></label>
    <div cyType="selectTool" cyProps="url:'/frontframe/json/like.json',search:'true',filter:'demo'"
         name="sex" value="0" class="layui-input-inline"></div>
</div>

<div class="layui-form-item">
    <label class="layui-form-label">省份<span class="span_must">*</span></label>
    <div cyType="selectTool" cyProps="enumName:'ProvinceEnum',multiple:'true'"
         value="1111330000,1111210000" name="area" class="layui-input-normal"></div>
</div>

<div class="layui-form-item">
    <label class="layui-form-label">详细地区<span class="span_must">*</span></label>
    <div cyType="linkSelectTool" cyProps="url:'/area/normalList/',topId:'0000000000',name:'parentAreaId[]'"
         value="1111111111,2111110000,1111110000" class="layui-input-inline"></div>
</div>

<div class="layui-form-item">
    <label class="layui-form-label">所属菜单<span class="span_must">*</span></label>
    <div class="layui-input-inline">
        <input value="0" id="demo" cyType="treeTool" cyProps="url:'/sys/menu/select',name:'parentId'"
               placeholder="请选择上级菜单" class="layui-input"/>

    </div>
</div>
<div class="layui-form-item">
    <label class="layui-form-label">上传照片<span class="span_must">*</span></label>
        <div cyType="uploadTool"  class="layui-input-normal"
             cyProps="url:'/getData/upload/',value:'/statics/img/timg.jpg',name:'file',btnName:'上传图片',multiple:'false'"></div>

</div>


<div class="layui-form-item">
    <label class="layui-form-label">备注<span class="label_span">:</span></label>
    <div class="layui-input-normal">
        <textarea placeholder="备注" class="layui-textarea"></textarea>
    </div>
</div>
