
# 开发文档

## 项目介绍

一直想做一款求职招聘管理系统，看了很多优秀的开源项目但是发现没有合适的。于是利用空闲休息时间开始自己写了一套管理系统。
学习过程中遇到问题可以咨询微信：lengqin1024 或者发Email: kefu308@gmail.com

## 在线体验


- 代码下载：https://github.com/geeeeeeeek/python_job
- 演示地址：http://job.gitapp.cn/

（账号：admin123 密码：admin123）

## 功能介绍

系统分为后台和前台两部分。

后台的主要功能：

- 岗位管理：管理系统可以录入、修改和查询岗位的基本信息，如岗位名称、地区、备注等。
- 类型管理：系统可以管理岗位的类型信息，包括类型的名称等。
- 标签管理：管理标签录入、修改和查询标签的信息。
- 评论管理：管理和浏览整个网站的评论信息。
- 公司管理：管理和浏览整个网站的公司信息。
- 简历管理：管理和浏览整个网站的简历信息。
- 用户管理：管理和浏览网站的用户信息，可以新增、编辑和删除用户。
- 统计分析：系统可以根据岗位的活动数据和会员参与度进行统计和分析，帮助管理员了解整个系统的状况。
- 消息管理：岗位管理员可以在系统上发布消息，整个网站的用户都能收到。
- 系统信息：管理员可以查看系统的基本信息，包括系统名称、服务器信息、内存信息、cpu信息、软件信息等。

前台的主要功能：

- 注册登录：用户通过注册和登录后，才能使用网站。
- 门户浏览：用户进入首页后，可以浏览岗位列表信息，包括最新、最热、推荐。
- 智能推荐：详情页右侧的热门推荐。
- 用户中心：包括用户基本资料修改、用户邮箱推送、消息。
- 我的投递：包括我投递的岗位的信息。
- 模糊搜索：顶部搜索功能，支持模糊搜索岗位信息。
- 岗位评论：详情页下侧用户可以评论岗位。

## 开发环境

- 后端： Python 3.8 + Django 3.2
- 前端： Javascript + Vue
- 数据库：MySQL 5.7
- 开发平台：Pycharm + vscode
- 运行环境：Windows 10/11

## 关键技术

- 前端技术栈 ES6、vue、vuex、vue-router、vue-cli、axios、antd
- 后端技术栈 Python、Django、pip

### 后端技术

#### django框架

Django是一款基于Python开发的全栈式一体化Web应用框架。2003年问世之初，它只是美国一家报社的内部工具，2005年7月使用BSD许可证完成了开源。Django采用MTV设计模式，即Model（模型）+ Template（模板）+ View（视图）。它遵循MVC设计，并且内置了对象关系映射（ORM）层，使得开发者无需关心底层的数据存取细节，可以更专注于业务逻辑的开发。

Django的目的是削减代码量，简单且迅速地搭建以数据库为主体的复杂Web站点。它是全栈式框架，因此安装起来很简单，而且使用者众多。这使得Django除具有完备的官方文档之外，还有大量的关联文档、丰富的第三方库可供使用。与其他框架相比，Django用起来要轻松得多。

优点：
- 提供了定义序列化器Serializer的方法。可以快速根据Django ORM或者其他库自动序列化或反序列化。
- 提供了丰富的类视图MIXIN扩展类。可以简化视图的编写。
- 具有丰富的定制层级。包括函数视图、类视图，还可以将视图与自动生成API结合，满足各种需求。
- 支持多种身份认证和权限认证方式。
- 内置了限流系统。

### 前端技术

- npm：node.js的包管理工具，用于统一管理我们前端项目中需要用到的包、插件、工具、命令等，便于开发和维护。
- ES6：Javascript的新版本，ECMAScript6的简称。利用ES6我们可以简化我们的JS代码，同时利用其提供的强大功能来快速实现JS逻辑。
- vue-cli：Vue的脚手架工具，用于自动生成Vue项目的目录及文件。
- vue-router： Vue提供的前端路由工具，利用其我们实现页面的路由控制，局部刷新及按需加载，构建单页应用，实现前后端分离。
- vuex：Vue提供的状态管理工具，用于统一管理我们项目中各种数据的交互和重用，存储我们需要用到数据对象。
- Ant-design：基于MVVM框架Vue开源出来的一套前端ui组件。

## 运行步骤

### 后端运行步骤

(1) 安装mysql数据库，启动服务

(2) 打开cmd命令行，进入mysql，并新建数据库
```
mysql -u root -p
CREATE DATABASE IF NOT EXISTS python_job DEFAULT CHARSET utf8 COLLATE utf8_general_ci;
```

(3) 恢复sql数据
```
use xxx
source xxxx.sql
```
(4) 修改settings.py中的配置信息

(5) 安装python 3.8

(6) 安装依赖包
```
pip install -r requirements.txt -i https://mirrors.aliyun.com/pypi/simple
```
(7) 运行命令
```
python manage.py runserver 
```


### 前端运行步骤

(1) 安装node 16

(2) cmd进入web目录下，安装依赖，执行:
```
npm install 
```
(3) 运行项目
```
npm run dev
```

## 代码结构

### 后端结构

```
server  
├── myapp            // 主应用
│       └── auth                     // 认证管理
│       └── middlewares              // 中间件
│       └── permission               // 权限
│       └── views                    // 视图与接口（主要业务代码）
│       └── models.py                // 状态码
│       └── serializers.py           // 状态码
│       └── urls.py                  // 状态码
│       └── utils.py                 // 状态码
├── entity             // 实体类
├── interceptor        // 拦截器
├── mapper             // 数据库映射
├── server             // 配置目录
├── upload             // 静态资源目录
├── requiements.txt    // 依赖项
```

### 前端结构

```
├── build                      // 构建相关  
├── public                     // 公共文件
│   ├── favicon.ico            // favicon图标
│   └── index.html             // html模板
├── src                        // 源代码
│   ├── api                    // 所有请求
│   ├── assets                 // 主题 字体等静态资源
│   ├── router                 // 路由
│   ├── store                  // 全局 store管理
│   ├── utils                  // 全局公用方法
│   ├── views                  // view界面
│   ├── App.vue                // 入口页面
│   ├── main.js                // 入口 加载组件 初始化等
│   └── settings.js            // 系统配置
├── .eslintignore              // 忽略语法检查
├── .eslintrc.js               // eslint 配置项
├── .gitignore                 // git 忽略项
├── babel.config.js            // babel.config.js
├── package.json               // package.json
└── vite.config.js             // vue配置
```

## 数据库设计

### 需求分析

在岗位管理系统中，需要存储和管理岗位信息、评论信息、分类信息、标签信息、用户信息、通知信息、日志信息。

实体设计如下：
- 岗位(thing)
- 分类(classification)
- 标签(tag)
- 简历(resume)
- 用户(user)
- 评价(comment)
- 日志(log)
- 通知(notice)

关系如下：
- 一个岗位有一个分类
- 一个分类可以对应多个岗位
- 一个岗位有多个标签
- 一个标签可以对应多个岗位

数据表设计如下：

```
// 投递
Table post {
    post_id int [pk]
    user_id int [ref: > user.user_id] // 所属用户
    thing_id int [ref: > thing.thing_id] // 对应岗位
    company_id int [ref: > company.company_id] // 对应公司
    resume_id int [ref: > resume.resume_id] // 简历
    create_time varchar // 投递时间
 }

// 简历
Table resume {
    resume_id int [pk]
    user_id int [ref: > user.user_id] // 所属用户
    name varchar
    sex varchar
    birthday varchar
    age varchar
    education varchar
    school varchar
    email varchar
    mobile varchar
    cover varchar // 照片
    raw varchar // 简历地址
 }

// 企业
Table company {
    company_id int [pk]
    user_id int [ref: > user.user_id] // 所属用户
    title varchar
    cover varchar // 封面
    guimo varchar // 规模
    hangye varchar // 行业
    description varchar // 简介
    location varchar // 地址
 }

// 岗位
Table thing {
    thing_id int [pk]
    classification_id int [ref: > C.classification_id]
    tag_id int [ref: <> tag.tag_id]
    user_id int [ref: > user.user_id] // 所属用户
    company_id int [ref: > company.company_id] // 所属公司
    title varchar
    cover varchar
    salary varchar
    location varchar  // 工作地
    work_expe varchar // 经验：不限 1-3年 3-5年 5-10年
    education varchar // 学历：不限 专科 本科 研究生
    status int  // 0上架 1下架
    description text
    create_time datetime
    pv int
    wish_count int
    recommend_count int
    wish int [ref: <> user.user_id]
    collect int [ref: <> user.user_id]
 }
 
 Table classification as C {
   classification_id int [pk]
   pid int
   title varchar
   create_time datetime
 }
 
 Table tag {
   tag_id int [pk]
   title varchar
   create_time datetime
 }
 // 评论
 Table comment {
   comment_id int [pk]
   content varchar
   user_id int [ref: > user.user_id]
   thing_id int [ref: > thing.thing_id]
   comment_time datetime
   like_count int
 }
 // 用户表
 Table user {
   user_id int [pk]
   role varchar // 1管理员 2普通用户 3演示帐号
   status int // 0正常 1封号
   job_role varchar // 1求职者 2招聘者
   username varchar
   password varchar
   nickname varchar
   avatar varchar
   description varchar
   wish int [ref: <> thing.thing_id]
   email varchar
   mobile varchar
   score int // 积分
   push_email varchar // 推送邮箱
   push_switch int  // 推送开关
   token varchar
   admin_token varchar
 }
 
 // 登录日志
 Table login_log {
   log_id int [pk]
   username varchar
   ip varchar
   log_time datetime
 }
 
 // 操作日志
 Table op_log {
   id int [pk]
   re_ip varchar
   re_time datetime
   re_url varchar
   re_method varchar
   re_content varchar
   access_time varchar
 }
 
 // 异常日志
 Table error_log {
   id int [pk]
   ip varchar
   method varchar
   content varchar
   log_time varchar
 }
 
 
 
 // 通知
 Table notice {
   id int [pk]
   content varchar
   create_time datetime
 }
 
 
  Table address {
   address_id int [pk]
   user_id int [ref: > user.user_id]
   address_content varchar
   default int  // 是否默认地址
   create_time datetime
 }
 
```
## 开发过程


无论是岗位管理、用户管理、标签管理、分类管理、评价管理、日志管理、消息管理等功能都是基于springboot+vue框架开发的，开发流程是：

- 第一步：编写实体
- 第二步：编写序列化层
- 第三步：编写views层
- 第四步：编写界面和API

下面用岗位管理功能来演绎这个流程，其它的管理功能都是这个流程。

第一步：编写实体类

在server下的myapp下的models.py下面新建Thing类。并写入如下代码：

```
class Thing(models.Model):
    STATUS_CHOICES = (
        ('0', '上架'),
        ('1', '下架'),
    )
    id = models.BigAutoField(primary_key=True)
    classification = models.ForeignKey(Classification, on_delete=models.CASCADE, blank=True, null=True,
                                       related_name='classification_thing')
    tag = models.ManyToManyField(Tag, blank=True)
    title = models.CharField(max_length=100, blank=True, null=True)
    cover = models.ImageField(upload_to='cover/', null=True)
    description = models.TextField(max_length=1000, blank=True, null=True)
    price = models.CharField(max_length=50, blank=True, null=True) 
    mobile = models.CharField(max_length=50, blank=True, null=True)
    age = models.CharField(max_length=10, blank=True, null=True) 
    location = models.CharField(max_length=50, blank=True, null=True) 
    status = models.CharField(max_length=1, choices=STATUS_CHOICES, default='0')
    create_time = models.DateTimeField(auto_now_add=True, null=True)
    pv = models.IntegerField(default=0)
    recommend_count = models.IntegerField(default=0)
    wish = models.ManyToManyField(User, blank=True, related_name="wish_things")
    wish_count = models.IntegerField(default=0)
    collect = models.ManyToManyField(User, blank=True, related_name="collect_things")
    collect_count = models.IntegerField(default=0)

    class Meta:
            db_table = "b_thing"
```

第二步：编写序列化层

在server下的myapp下的serializers.py下新建ThingSerializer类，并写入代码：

```
class ThingSerializer(serializers.ModelSerializer):
    # 额外字段
    classification_title = serializers.ReadOnlyField(source='classification.title')

    class Meta:
        model = Thing
        fields = '__all__'

```

第三步：编写views层

在server的myapp下的views下，新建Thing.py代码，并写入代码，实现增删改查

```

# 查
@api_view(['GET'])
def list_api(request):
    if request.method == 'GET':
        keyword = request.GET.get("keyword", None)
        c = request.GET.get("c", None)
        tag = request.GET.get("tag", None)
        if keyword:
            things = Thing.objects.filter(title__contains=keyword).order_by('create_time')
        elif c:
            classification = Classification.objects.get(pk=c)
            things = classification.classification_thing.all()
        elif tag:
            tag = Tag.objects.get(id=tag)
            print(tag)
            things = tag.thing_set.all()
        else:
            things = Thing.objects.all().order_by('create_time')

        serializer = ThingSerializer(things, many=True)
        return APIResponse(code=0, msg='查询成功', data=serializer.data)

# 删
@api_view(['GET'])
def detail(request):

    try:
        pk = request.GET.get('id', -1)
        thing = Thing.objects.get(pk=pk)
    except Thing.DoesNotExist:
        utils.log_error(request, '对象不存在')
        return APIResponse(code=1, msg='对象不存在')

    if request.method == 'GET':
        serializer = ThingSerializer(thing)
        return APIResponse(code=0, msg='查询成功', data=serializer.data)

# 增
@api_view(['POST'])
@authentication_classes([AdminTokenAuthtication])
def create(request):

    if isDemoAdminUser(request):
        return APIResponse(code=1, msg='演示帐号无法操作')

    serializer = ThingSerializer(data=request.data)
    if serializer.is_valid():
        serializer.save()
        return APIResponse(code=0, msg='创建成功', data=serializer.data)
    else:
        print(serializer.errors)
        utils.log_error(request, '参数错误')

    return APIResponse(code=1, msg='创建失败')

# 改
@api_view(['POST'])
@authentication_classes([AdminTokenAuthtication])
def update(request):

    if isDemoAdminUser(request):
        return APIResponse(code=1, msg='演示帐号无法操作')

    try:
        pk = request.GET.get('id', -1)
        thing = Thing.objects.get(pk=pk)
    except Thing.DoesNotExist:
        return APIResponse(code=1, msg='对象不存在')

    serializer = UpdateThingSerializer(thing, data=request.data)
    if serializer.is_valid():
        serializer.save()
        return APIResponse(code=0, msg='查询成功', data=serializer.data)
    else:
        print(serializer.errors)
        utils.log_error(request, '参数错误')

    return APIResponse(code=1, msg='更新失败')

# 删
@api_view(['POST'])
@authentication_classes([AdminTokenAuthtication])
def delete(request):

    if isDemoAdminUser(request):
        return APIResponse(code=1, msg='演示帐号无法操作')

    try:
        ids = request.GET.get('ids')
        ids_arr = ids.split(',')
        Thing.objects.filter(id__in=ids_arr).delete()
    except Thing.DoesNotExist:
        return APIResponse(code=1, msg='对象不存在')
    return APIResponse(code=0, msg='删除成功')


```

然后将该接口添加到urls.py中即可。

第四步：编写界面和API

打开前端web工程，在views文件夹下新建thing.vue文件，并编写代码：

```
<template>
  <div>
    <!--页面区域-->
    <div class="page-view">
      <div class="table-operations">
      </div>
      <a-table
          size="middle"
          rowKey="id"
          :loading="data.loading"
          :columns="columns"
          :data-source="data.dataList"
          :scroll="{ x: 'max-content' }"
          :pagination="{
          size: 'default',
          current: data.page,
          pageSize: data.pageSize,
          onChange: (current) => (data.page = current),
          showSizeChanger: false,
          showTotal: (total) => `共${total}条数据`,
        }"
      >
        <template #bodyCell="{ text, record, index, column }">
          <template v-if="column.key === 'operation'">
            <span>
              <a @click="handleEdit(record)">编辑</a>
              <a-divider type="vertical" />
              <a-popconfirm title="确定删除?" ok-text="是" cancel-text="否" @confirm="confirmDelete(record)">
                <a href="#">删除</a>
              </a-popconfirm>
            </span>
          </template>
        </template>
      </a-table>
    </div>

    <!--弹窗区域-->
    <div>
      <a-modal
          :visible="modal.visile"
          :forceRender="true"
          :title="modal.title"
          width="880px"
          ok-text="确认"
          cancel-text="取消"
          @cancel="handleCancel"
          @ok="handleOk"
      >
        <div>
          <a-form ref="myform" :label-col="{ style: { width: '80px' } }" :model="modal.form" :rules="modal.rules">
            <a-row :gutter="24">
              <a-col span="24">
                <a-form-item label="岗位名称" name="title">
                  <a-input placeholder="请输入" v-model:value="modal.form.title"></a-input>
                </a-form-item>
              </a-col>
              <a-col span="12">
                <a-form-item label="分类" name="classification">
                  <a-select placeholder="请选择"
                            allowClear
                            :options="modal.cData"
                            :field-names="{ label: 'title', value: 'id',}"
                            v-model:value="modal.form.classification">
                  </a-select>
                </a-form-item>
              </a-col>
              <a-col span="12">
                <a-form-item label="标签">
                  <a-select mode="multiple" placeholder="请选择" allowClear v-model:value="modal.form.tag">
                    <template v-for="item in modal.tagData">
                      <a-select-option :value="item.id">{{item.title}}</a-select-option>
                    </template>
                  </a-select>
                </a-form-item>
              </a-col>
              <a-col span="24">
                <a-form-item label="岗位简介">
                  <a-textarea placeholder="请输入" v-model:value="modal.form.description"></a-textarea>
                </a-form-item>
              </a-col>
              <a-col span="12">
                <a-form-item label="工作地点" >
                  <a-input placeholder="请输入" v-model:value="modal.form.location"></a-input>
                </a-form-item>
              </a-col>
              <a-col span="12">
                <a-form-item label="薪资" name="status">
                  <a-input placeholder="请输入" v-model:value="modal.form.salary"></a-input>
                </a-form-item>
              </a-col>
              <a-col span="12">
                <a-form-item label="学历要求" name="status">
                  <a-select placeholder="请选择" allowClear v-model:value="modal.form.education">
                    <a-select-option key="不限" value="不限">不限</a-select-option>
                    <a-select-option key="专科" value="专科">专科</a-select-option>
                    <a-select-option key="本科" value="本科">本科</a-select-option>
                    <a-select-option key="研究生" value="研究生">研究生</a-select-option>
                  </a-select>
                </a-form-item>
              </a-col>
              <a-col span="12">
                <a-form-item label="经验要求" name="status">
                  <a-select placeholder="请选择" allowClear v-model:value="modal.form.work_expe">
                    <a-select-option key="不限" value="不限">不限</a-select-option>
                    <a-select-option key="1-3年" value="1-3年">1-3年</a-select-option>
                    <a-select-option key="3-5年" value="3-5年">3-5年</a-select-option>
                    <a-select-option key="5年以上" value="5年以上">5年以上</a-select-option>
                  </a-select>
                </a-form-item>
              </a-col>
              <a-col span="12">
                <a-form-item label="状态" name="status">
                  <a-select placeholder="请选择" allowClear v-model:value="modal.form.status">
                    <a-select-option key="0" value="0">上架</a-select-option>
                    <a-select-option key="1" value="1">下架</a-select-option>
                  </a-select>
                </a-form-item>
              </a-col>
            </a-row>
          </a-form>
        </div>
      </a-modal>
    </div>
  </div>
</template>

<script setup lang="ts">
import { FormInstance, message, SelectProps } from 'ant-design-vue';
import { createApi, listApi, updateApi, deleteApi } from '/@/api/admin/thing';
import {listApi as listClassificationApi} from '/@/api/admin/classification'
import {listApi as listTagApi} from '/@/api/admin/tag'
import {BASE_URL} from "/@/store/constants";
import { FileImageOutlined } from '@ant-design/icons-vue';

const columns = reactive([

  {
    title: '序号',
    dataIndex: 'index',
    key: 'index',
    width: 60
  },
  {
    title: '岗位名称',
    dataIndex: 'title',
    key: 'title'
  },
  {
    title: '公司名称',
    dataIndex: 'company_title',
    key: 'company_title'
  },
  {
    title: '薪资水平',
    dataIndex: 'salary',
    key: 'salary'
  },
  {
    title: '岗位描述',
    dataIndex: 'description',
    key: 'description',
    customRender:  ({ text, record, index, column }) => text ? text.substring(0, 10) + '...' : '--'
  },
  {
    title: '学历要求',
    dataIndex: 'education',
    key: 'education'
  },
  {
    title: '经验要求',
    dataIndex: 'work_expe',
    key: 'work_expe'
  },
  {
    title: '工作地点',
    dataIndex: 'location',
    key: 'location'
  },
  {
    title: '操作',
    dataIndex: 'action',
    key: 'operation',
    align: 'center',
    fixed: 'right',
    width: 140,
  },
]);

const beforeUpload = (file: File) => {
  // 改文件名
  const fileName = new Date().getTime().toString() + '.' + file.type.substring(6);
  const copyFile = new File([file], fileName);
  console.log(copyFile);
  modal.form.imageFile = copyFile;
  return false;
};

// 文件列表
const fileList = ref<any[]>([]);

// 页面数据
const data = reactive({
  dataList: [],
  loading: false,
  keyword: '',
  selectedRowKeys: [] as any[],
  pageSize: 10,
  page: 1,
});

// 弹窗数据源
const modal = reactive({
  visile: false,
  editFlag: false,
  title: '',
  cData: [],
  tagData: [{}],
  form: {
    id: undefined,
    title: undefined,
    classification: undefined,
    tag: [],
    status: undefined,
    location: undefined,
    salary: undefined,
    work_expe: undefined,
    education: undefined
  },
  rules: {
    title: [{ required: true, message: '请输入名称', trigger: 'change' }],
    classification: [{ required: true, message: '请选择分类', trigger: 'change' }],
    status: [{ required: true, message: '请选择状态', trigger: 'change' }]
  },
});

const myform = ref<FormInstance>();

onMounted(() => {
  getDataList();
  getCDataList();
  getTagDataList();
});

const getDataList = () => {
  data.loading = true;
  listApi({
    keyword: data.keyword,
  })
      .then((res) => {
        data.loading = false;
        console.log(res);
        res.data.forEach((item: any, index: any) => {
          item.index = index + 1;
        });
        data.dataList = res.data;
      })
      .catch((err) => {
        data.loading = false;
        console.log(err);
      });
}

const getCDataList = () => {
  listClassificationApi({}).then(res => {
    modal.cData = res.data
  })
}
const getTagDataList = ()=> {
  listTagApi({}).then(res => {
    res.data.forEach((item, index) => {
      item.index = index + 1
    })
    modal.tagData = res.data
  })
}

const onSearchChange = (e: Event) => {
  data.keyword = e?.target?.value;
  console.log(data.keyword);
};

const onSearch = () => {
  getDataList();
};

const rowSelection = ref({
  onChange: (selectedRowKeys: (string | number)[], selectedRows: DataItem[]) => {
    console.log(`selectedRowKeys: ${selectedRowKeys}`, 'selectedRows: ', selectedRows);
    data.selectedRowKeys = selectedRowKeys;
  },
});

const handleAdd = () => {
  resetModal();
  modal.visile = true;
  modal.editFlag = false;
  modal.title = '新增';
  // 重置
  for (const key in modal.form) {
    modal.form[key] = undefined;
  }
  modal.form.cover = undefined
};
const handleEdit = (record: any) => {
  resetModal();
  modal.visile = true;
  modal.editFlag = true;
  modal.title = '编辑';
  // 重置
  for (const key in modal.form) {
    modal.form[key] = undefined;
  }
  for (const key in record) {
    if(record[key]) {
      modal.form[key] = record[key];
    }
  }
  if(modal.form.cover) {
    modal.form.coverUrl = BASE_URL + modal.form.cover
    modal.form.cover = undefined
  }
};

const confirmDelete = (record: any) => {
  console.log('delete', record);
  deleteApi({ ids: record.id })
      .then((res) => {
        getDataList();
      })
      .catch((err) => {
        message.error(err.msg || '操作失败');
      });
};

const handleBatchDelete = () => {
  console.log(data.selectedRowKeys);
  if (data.selectedRowKeys.length <= 0) {
    console.log('hello');
    message.warn('请勾选删除项');
    return;
  }
  deleteApi({ ids: data.selectedRowKeys.join(',') })
      .then((res) => {
        message.success('删除成功');
        data.selectedRowKeys = [];
        getDataList();
      })
      .catch((err) => {
        message.error(err.msg || '操作失败');
      });
};

const handleOk = () => {
  myform.value
      ?.validate()
      .then(() => {
        const formData = new FormData();
        if(modal.editFlag) {
          formData.append('id', modal.form.id)
        }
        formData.append('title', modal.form.title)
        if (modal.form.classification) {
          formData.append('classification', modal.form.classification)
        }
        if (modal.form.tag) {
          modal.form.tag.forEach(function (value) {
            if(value){
              formData.append('tag', value)
            }
          })
        }

        formData.append('description', modal.form.description || '')

        if (modal.form.status) {
          formData.append('status', modal.form.status)
        }
        if (modal.form.location) {
          formData.append('location', modal.form.location)
        } if (modal.form.salary) {
          formData.append('salary', modal.form.salary)
        } if (modal.form.work_expe) {
          formData.append('work_expe', modal.form.work_expe)
        } if (modal.form.education) {
          formData.append('education', modal.form.education)
        }
        if (modal.editFlag) {
          updateApi({
            id: modal.form.id
          },formData)
              .then((res) => {
                hideModal();
                getDataList();
              })
              .catch((err) => {
                console.log(err);
                message.error(err.msg || '操作失败');
              });
        } else {
          // createApi(formData)
          //     .then((res) => {
          //       hideModal();
          //       getDataList();
          //     })
          //     .catch((err) => {
          //       console.log(err);
          //       message.error(err.msg || '操作失败');
          //     });
        }
      })
      .catch((err) => {
        console.log('不能为空');
      });
};

const handleCancel = () => {
  hideModal();
};

// 恢复表单初始状态
const resetModal = () => {
  myform.value?.resetFields();
  fileList.value = []
};

// 关闭弹窗
const hideModal = () => {
  modal.visile = false;
};
</script>

<style scoped lang="less">
.page-view {
  min-height: 100%;
  background: #fff;
  padding: 24px;
  display: flex;
  flex-direction: column;
}

.table-operations {
  margin-bottom: 16px;
  text-align: right;
}

.table-operations > button {
  margin-right: 8px;
}
</style>

```
这就是岗位管理功能的实现流程，其它的功能管理实现一模一样的。按照这个流程编写即可。

## 重要模块实现

### 分页实现

基于ant-design框架的a-table的分页插件。

```
// 分页变量

  const data = reactive({
    dataList: [],
    loading: false,
    keyword: '',
    selectedRowKeys: [] as any[],
    pageSize: 10,
    page: 1,
  });
  
// 分页插件
:pagination="{
          size: 'default',
          current: data.page,
          pageSize: data.pageSize,
          onChange: (current) => (data.page = current),
          showSizeChanger: false,
          showTotal: (total) => `共${total}条数据`,
        }"

```

### 请求工具实现

前端的请求工具是基于axios开发的，位于utils的http文件夹中。封装了request请求和拦截器。

```
const service: AxiosInstance = axios.create({
  // baseURL: import.meta.env.BASE_URL + '',
  baseURL: BASE_URL + '',
  timeout: 15000,
});

// axios实例拦截请求
service.interceptors.request.use(
  (config: InternalAxiosRequestConfig) => {
    config.headers.ADMINTOKEN = localStorage.getItem(ADMIN_USER_TOKEN);
    config.headers.TOKEN = localStorage.getItem(USER_TOKEN);

    return config;
  },
  (error: AxiosError) => {
    return Promise.reject(error);
  },
);

// axios实例拦截响应
service.interceptors.response.use(
  (response: AxiosResponse) => {
    if (response.status == 200) {
      if (response.data.code == 0 || response.data.code == 200) {
        return response;
      } else {
        return Promise.reject(response.data);
      }
    } else {
      return Promise.reject(response.data);
    }
  },
  // 请求失败
  (error: any) => {
    console.log(error.response.status);
    if (error.response.status == 404) {
      // todo
    } else if (error.response.status == 403) {
      // todo
    }
    return Promise.reject(error);
  },
);

```

### 权限控制模块

权限控制使用了BaseAuthentication实现的，具体代码可参考authentication.py

```
from rest_framework import exceptions
from rest_framework.authentication import BaseAuthentication
from myapp.models import User

# 接口认证
class AdminTokenAuthtication(BaseAuthentication):
    def authenticate(self, request):
        adminToken = request.META.get("HTTP_ADMINTOKEN")

        print("检查adminToken==>" + adminToken)
        users = User.objects.filter(admin_token=adminToken)
        """
        判定条件：
            1. 传了adminToken 
            2. 查到了该帐号 
            3. 该帐号是管理员或演示帐号
        """
        if not adminToken or len(users) == 0 or users[0].role == '2':
            raise exceptions.AuthenticationFailed("AUTH_FAIL_END")
        else:
            print('adminToken验证通过')


```



### 路由模块实现

前端的路由是基于vue-router框架实现的，路由文件位于src的rooter的root.js文件中。预览如下：

```
  {
    path: '/admin',
    name: 'admin',
    redirect: '/admin/thing',
    component: () => import('/@/views/admin/main.vue'),
    children: [
      { path: 'overview', name: 'overview', component: () => import('/@/views/admin/overview.vue') },
      { path: 'order', name: 'order', component: () => import('/@/views/admin/order.vue') },
      { path: 'thing', name: 'thing', component: () => import('/@/views/admin/thing.vue') },
      { path: 'comment', name: 'comment', component: () => import('/@/views/admin/comment.vue') },
      { path: 'user', name: 'user', component: () => import('/@/views/admin/user.vue') },
      { path: 'classification', name: 'classification', component: () => import('/@/views/admin/classification.vue') },
      { path: 'tag', name: 'tag', component: () => import('/@/views/admin/tag.vue') },
      { path: 'ad', name: 'ad', component: () => import('/@/views/admin/ad.vue') },
      { path: 'notice', name: 'notice', component: () => import('/@/views/admin/notice.vue') },
      { path: 'loginLog', name: 'loginLog', component: () => import('/@/views/admin/login-log.vue') },
      { path: 'opLog', name: 'opLog', component: () => import('/@/views/admin/op-log.vue') },
      { path: 'errorLog', name: 'errorLog', component: () => import('/@/views/admin/error-log.vue') },
      { path: 'sysInfo', name: 'sysInfo', component: () => import('/@/views/admin/sys-info.vue') },
    ]
  },
```

### 限速功能实现

限流(Throttle)就是限制客户端对API 的调用频率，是API开发者必须要考虑的因素。比如个别客户端(比如爬虫程序)短时间发起大量请求，超过了服务器能够处理的能力，将会影响其它用户的正常使用。又或者某个接口占用数据库资源比较多，如果同一时间该接口被大量调用，服务器可能会陷入僵死状态。为了保证API服务的稳定性，并防止接口受到恶意用户的攻击，我们必须要对我们的API服务进行限流。

我们使用了django的AnonRateThrottle限流类来实现的。可以参见myapp的auth目录下的MyRateThrottle.py文件

```
class MyRateThrottle(AnonRateThrottle):
    THROTTLE_RATES = {"anon": "2/min"}  # 限流每分钟只能请求2次
```

当某个api接口需要限流的时候，只需要添加注解即可，如下所示

```
@api_view(['POST'])
@throttle_classes([MyRateThrottle]) # 限流注解
def create(request):
    serializer = CommentSerializer(data=request.data)
    if serializer.is_valid():
        serializer.save()
        return APIResponse(code=0, msg='创建成功', data=serializer.data)
    else:
        print(serializer.errors)

    return APIResponse(code=1, msg='创建失败')
```

## 常见问题

- 数据库版本有要求吗？

需要mysql 5.7以上

- 前端 npm install 失败怎么办？

使用国内镜像安装，设置命令为：
```
npm config set registry https://registry.npm.taobao.org
```

- 提示"演示账号无法操作"，怎么办？

将用户的权限提高，修改b_user表的role字段

- 如何更换后端请求地址

修改store文件夹下的constants.js文件中的BASE_URL，改成你自己的后端地址

- 如何新增页面

在views文件夹下创建新的vue文件，写入界面代码，然后在router的root.js中添加路由即可。





