<template>
  <div>
    <!--页面区域-->
    <div class="page-view">
      <div class="table-operations">
        <a-space>
          <a-button type="primary" @click="handleAdd">新增</a-button>
          <a-button @click="handleBatchDelete">批量删除</a-button>
          <a-input-search addon-before="用户名" enter-button @search="onSearch" @change="onSearchChange" />
        </a-space>
      </div>
      <a-table
        size="middle"
        rowKey="id"
        :loading="data.loading"
        :columns="columns"
        :data-source="data.userList"
        :scroll="{ x: 'max-content' }"
        :row-selection="rowSelection"
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
          <template v-if="column.key === 'role'">
            <span>
              <span v-if="text === '1'">管理员</span>
              <span v-if="text === '2'">普通用户</span>
              <span v-if="text === '3'">演示账号</span>
            </span>
          </template>
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
        ok-text="确认"
        cancel-text="取消"
        @cancel="handleCancel"
        @ok="handleOk"
      >
        <div>
          <a-form ref="myform" :label-col="{ style: { width: '80px' } }" :model="modal.form" :rules="modal.rules">
            <a-row :gutter="24">
              <a-col span="24">
                <a-form-item label="用户名" name="username">
                  <a-input :disabled="modal.editFlag" placeholder="请输入" v-model:value="modal.form.username" allowClear />
                </a-form-item>
              </a-col>
              <a-col span="24" v-if="!modal.editFlag">
                <a-form-item label="密码" name="password">
                  <a-input placeholder="请输入" type="password" v-model:value="modal.form.password" allowClear />
                </a-form-item>
              </a-col>
              <a-col span="24">
                <a-form-item label="昵称" name="nickname">
                  <a-input placeholder="请输入" v-model:value="modal.form.nickname" allowClear />
                </a-form-item>
              </a-col>
              <a-col span="24">
                <a-form-item label="角色" name="role">
                  <a-select placeholder="请选择" allowClear v-model:value="modal.form.role">
                    <template v-for="item in modal.roleData">
                      <a-select-option :value="item.id">{{ item.title }}</a-select-option>
                    </template>
                  </a-select>
                </a-form-item>
              </a-col>
              <a-col span="24">
                <a-form-item label="状态" name="status">
                  <a-select placeholder="请选择" allowClear v-model:value="modal.form.status">
                    <a-select-option key="0" value="0">正常</a-select-option>
                    <a-select-option key="1" value="1">封号</a-select-option>
                  </a-select>
                </a-form-item>
              </a-col>
              <a-col span="24">
                <a-form-item label="邮箱" name="email">
                  <a-input placeholder="请输入" v-model:value="modal.form.email" allowClear />
                </a-form-item>
              </a-col>
              <a-col span="24">
                <a-form-item label="手机号" name="mobile">
                  <a-input placeholder="请输入" v-model:value="modal.form.mobile" allowClear />
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
  import { FormInstance, message } from 'ant-design-vue';
  import { createApi, listApi, updateApi, deleteApi } from '/@/api/admin/user';
  import {getFormatTime} from "/@/utils";


  const columns = reactive([
    {
      title: '序号',
      dataIndex: 'index',
      key: 'index',
      align: 'center',
    },
    {
      title: '用户名',
      dataIndex: 'username',
      key: 'username',
      align: 'center',
    },
    {
      title: '昵称',
      dataIndex: 'nickname',
      key: 'nickname',
      align: 'center',
    },
    {
      title: '角色',
      dataIndex: 'role',
      key: 'role',
      align: 'center',
    },
    {
      title: '状态',
      dataIndex: 'status',
      key: 'status',
      align: 'center',
      customRender: ({ text, record, index, column }) => (text === '0' ? '正常' : '封号'),
    },
    {
      title: '邮箱',
      dataIndex: 'email',
      key: 'email',
      align: 'center',
    },
    {
      title: '手机号',
      dataIndex: 'mobile',
      key: 'mobile',
      align: 'center',
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
    modal.form.cover = copyFile;
    return false;
  };

  const fileList = ref([]);

  // 页面数据
  const data = reactive({
    userList: [],
    loading: false,
    currentAdminUserName: '',
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
    roleData: [
      {
        id: '1',
        title: '管理员',
      },
      {
        id: '2',
        title: '普通用户',
      },
      {
        id: '3',
        title: '演示账号',
      },
    ],
    form: {
      id: undefined,
      username: undefined,
      password: undefined,
      role: undefined,
      status: undefined,
      nickname: undefined,
      email: undefined,
      mobile: undefined,
    },
    rules: {
      username: [{ required: true, message: '请输入', trigger: 'change' }],
      password: [{ required: true, message: '请输入', trigger: 'change' }],
      role: [{ required: true, message: '请选择', trigger: 'change' }],
      status: [{ required: true, message: '请选择', trigger: 'change' }],
    },
  });

  const myform = ref<FormInstance>();

  onMounted(() => {
    getUserList();
  });

  const getUserList = () => {
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
        data.userList = res.data;
      })
      .catch((err) => {
        data.loading = false;
        console.log(err);
      });
  };

  const onSearchChange = (e: Event) => {
    data.keyword = e?.target?.value;
    console.log(data.keyword);
  };

  const onSearch = () => {
    getUserList();
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
      modal.form[key] = record[key];
    }
  };

  const confirmDelete = (record: any) => {
    console.log('delete', record);
    deleteApi({ ids: record.id })
      .then((res) => {
        getUserList();
      })
      .catch((err) => {
        message.warn(err.msg || "操作失败")
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
        getUserList();
      })
      .catch((err) => {
        message.warn(err.msg || "操作失败")
      });
  };

  const handleOk = () => {
    myform.value
      ?.validate()
      .then(() => {
        const formData = new FormData();
        if (modal.form.username) {
          formData.append('username', modal.form.username);
        }
        if (modal.form.password) {
          formData.append('password', modal.form.password);
        }
        if (modal.form.nickname) {
          formData.append('nickname', modal.form.nickname);
        }
        if (modal.form.role) {
          formData.append('role', modal.form.role);
        }
        if (modal.form.status) {
          formData.append('status', modal.form.status);
        }
        if (modal.form.cover) {
          formData.append('cover', modal.form.cover);
        }
        if (modal.form.mobile) {
          formData.append('mobile', modal.form.mobile);
        }
        if (modal.form.email) {
          formData.append('email', modal.form.email);
        }
        if (modal.editFlag) {
          updateApi({
            id: modal.form.id
          },formData)
            .then((res) => {
              hideModal();
              getUserList();
            })
            .catch((err) => {
              console.log(err);
              message.warn(err.msg || "操作失败")
            });
        } else {
          createApi(formData)
            .then((res) => {
              hideModal();
              getUserList();
            })
            .catch((err) => {
              console.log(err);
              message.warn(err.msg || "操作失败")
            });
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
