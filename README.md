# 后台管理框架


 **框架说明** 

1. 基于ssm+shiro安全框架的后台管理框架，权限简单易用可控制到按钮。

2. 配置代码生成器，减少70%开发时间，专注业务逻辑。

3. 前端声明式组件封装、附带文档编写 ctrl+c ctrl+v 即可使用。封装数据源，可通过url、枚举、字典直接渲染组件。代码量极少且易维护。

4. layui常用代码的二次封装，省略layui部分繁琐的代码！

   

 **模块** 

- manage-common   公用模块
- manage-gen      代码生成器模块
- manage-shiro    shiro模块
- manage-web      web开发模块

 **webapp** 

- common           公用文件
- frontframe       前端框架文件
- page             页面文件
- statics          其他静态文件


 **本地部署**

1. 创建数据库manage
2. 执行db/manage.sql文件，初始化数据
3. IDEA、Eclipse配置tomcat,启动项目
4. 项目访问路径：http://localhost:8080/
5. 账号密码：admin/admin
