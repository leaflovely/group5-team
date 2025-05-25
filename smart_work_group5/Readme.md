### 演示地址

前台地址： http://1.117.171.66:8003/

后台地址：http://1.117.171.66:8003/admin

后台管理帐号：

用户名：admin123
密码：admin123

### 功能介绍

平台采用 B/S 结构，后端采用主流的 Python 语言进行开发，前端采用主流的 Vue.js 进行开发。

整个平台包括前台和后台两个部分。

- 前台功能包括：首页、岗位详情页、简历中心、用户设置模块。
- 后台功能包括：总览、岗位管理、公司管理、分类管理、标签管理、评论管理、用户管理、运营管理、日志管理、系统信息模块。

### 代码结构

- server 目录是后端代码
- web 目录是前端代码

### 部署运行

#### 后端运行步骤

(1) 安装 python 3.8

(2) 安装依赖。进入 server 目录下，执行 pip install -r requirements.txt

(3) 安装 mysql 5.7 数据库，并创建数据库，创建 SQL 如下：

```
CREATE DATABASE IF NOT EXISTS python_job DEFAULT CHARSET utf8 COLLATE utf8_general_ci
```

(4) 恢复 sql 数据。在 mysql 下依次执行如下命令：
python manage.py makemigrations
python manage.py migrate

```
mysql> use xxx;
mysql> source D:/xxx/xxx/xxx.sql;
```

(5) 启动 django 服务。在 server 目录下执行：

```
python manage.py runserver
```

#### 前端运行步骤

(1) 安装 node 16.14

(2) 进入 web 目录下，安装依赖，执行:

```
npm install
```

(3) 运行项目

```
npm run serve
```

### 界面预览

首页

![]()

后台页面

![]()

### 待完善功能

- 邮箱推送功能
- 手机号绑定功能
- 粉丝关注功能

### 付费咨询

微信：lengqin1024

### 购买完整代码

微信：lengqin1024
