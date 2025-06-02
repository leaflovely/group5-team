<template>
  <div class="content-list">
    <div class="list-title">我的简历</div>
    <a-spin :spinning="loading" style="min-height: 200px;">
      <div class="list-content">
      <div class="edit-view">
        <div class="item flex-view">
          <div class="label">头像</div>
          <div class="right-box avatar-box flex-view">
            <img v-if="tData.form && tData.form.avatar" :src="tData.form.avatar" class="avatar">
            <img v-else :src="AvatarIcon" class="avatar">
            <div class="change-tips flex-view">
                <a-upload
                  name="file"
                  accept="image/*"
                  :multiple="false"
                  :before-upload="beforeUpload"
                >
                  <label>点击更换头像</label>
                </a-upload>
              <p class="tip">图片格式支持 GIF、PNG、JPEG，尺寸不小于 200 PX，小于 4 MB</p>
            </div>
          </div>
        </div>
        <div class="item flex-view">
          <div class="label">姓名</div>
          <div class="right-box">
            <input type="text" v-model="tData.form.name" placeholder="请输入姓名" maxlength="20" class="input-dom">
            <p class="tip">支持中英文，长度不能超过 20 个字符</p>
          </div>
        </div>
        <div class="item flex-view">
          <div class="label">性别</div>
          <div class="right-box">
            <input type="text" v-model="tData.form.sex" placeholder="请输入性别" maxlength="100" class="input-dom web-input">
          </div>
        </div>
        <div class="item flex-view">
          <div class="label">学历</div>
          <div class="right-box">
            <input type="text" v-model="tData.form.education" placeholder="请输入学历" maxlength="100" class="input-dom web-input">
          </div>
        </div>
        <div class="item flex-view">
          <div class="label">毕业学校</div>
          <div class="right-box">
            <input type="text" v-model="tData.form.school" placeholder="请输入学校" maxlength="100" class="input-dom web-input">
          </div>
        </div>
        <div class="item flex-view">
          <div class="label">手机号</div>
          <div class="right-box">
            <input type="text" v-model="tData.form.mobile" placeholder="请输入邮箱" maxlength="100" class="input-dom web-input">
          </div>
        </div>
        <div class="item flex-view">
          <div class="label">邮箱</div>
          <div class="right-box">
            <input type="text" v-model="tData.form.email" placeholder="请输入邮箱" maxlength="100" class="input-dom web-input">
          </div>
        </div>
        <div class="item flex-view">
          <div class="label">简历附件</div>
          <div class="right-box" style="display: flex;flex-direction: row;">
            <a-upload
                name="file1"
                :multiple="false"
                :before-upload="beforeUpload1"
            >
              <a-button>
                <upload-outlined></upload-outlined>
                点击选择文件
              </a-button>
              （docx或pdf）
            </a-upload>
            <a v-if="tData.form.raw" :href="tData.form.downloadUrl" style="margin-top: 6px;">下载</a>
          </div>
        </div>
        <button class="save mg" @click="submit()">保存</button>
      </div>
    </div>
    </a-spin>
  </div>
</template>

<script setup>
import {message} from "ant-design-vue";
import {
  detailApi, createApi, updateApi
} from '/@/api/index/resume'
import {BASE_URL} from "/@/store/constants";
import {useUserStore} from "/@/store";
import AvatarIcon from '/@/assets/images/avatar.jpg'

const router = useRouter();
const userStore = useUserStore();

let loading = ref(false)
let tData = reactive({
  form:{
    id: undefined,
    name: undefined,
    sex: undefined,
    birthday: undefined,
    education: undefined,
    avatar: undefined,
    avatarFile: undefined,
    rawFile: undefined,
    raw: undefined,
    email: undefined,
    mobile: undefined,
    description: undefined,
    downloadUrl: undefined,
  }
})

onMounted(()=>{
  getDetail()
})

const beforeUpload =(file)=> {
  // 改文件名
  const fileName = new Date().getTime().toString() + '.' + file.type.substring(6)
  const copyFile = new File([file], fileName)
  console.log(copyFile)
  tData.form.avatarFile = copyFile
  return false
}


const beforeUpload1 =(file)=> {
  // 改文件名
  const fileName = new Date().getTime().toString() + '.' + file.type.substring(6)
  const copyFile = new File([file], fileName)
  console.log(copyFile)
  tData.form.rawFile = copyFile
  return false
}

const getDetail =()=> {
  loading.value = true
  let userId = userStore.user_id
  detailApi({user: userId}).then(res => {
    tData.form = res.data
    if (tData.form.avatar) {
      tData.form.avatar = BASE_URL  + tData.form.avatar
    }
    if(tData.form.raw) {
      tData.form.downloadUrl = BASE_URL + tData.form.raw
    }
    loading.value = false
  }).catch(err => {
    console.log(err)
    loading.value = false
  })
}
const submit =()=> {
  let formData = new FormData()
  let userId = userStore.user_id
  formData.append('user', userId)
  if (tData.form.avatarFile) {
    formData.append('avatar', tData.form.avatarFile)
  }
  if (tData.form.rawFile) {
    formData.append('raw', tData.form.rawFile)
  }
  if (tData.form.name) {
    formData.append('name', tData.form.name)
  }
  if (tData.form.sex) {
    formData.append('sex', tData.form.sex)
  }
  if (tData.form.email) {
    formData.append('email', tData.form.email)
  }
  if (tData.form.mobile) {
    formData.append('mobile', tData.form.mobile)
  }
  if (tData.form.education) {
    formData.append('education', tData.form.education)
  }
  if (tData.form.school) {
    formData.append('school', tData.form.school)
  }

  if(tData.form.id){
    updateApi({
      id: tData.form.id
    },formData).then(res => {
      message.success('保存成功')
      getDetail()
    }).catch(err => {
      console.log(err)
    })
  }else {
    createApi(formData).then(res => {
      message.success('保存成功')
      getDetail()
    }).catch(err => {
      console.log(err)
    })
  }

}

</script>

<style scoped lang="less">
input, textarea {
  border-style: none;
  outline: none;
  margin: 0;
  padding: 0;
  transition: all 0.3s ease;
}

.flex-view {
  display: -webkit-box;
  display: -ms-flexbox;
  display: flex;
}

.content-list {
  -webkit-box-flex: 1;
  -ms-flex: 1;
  flex: 1;
  background: #fff;
  border-radius: 20px;
  box-shadow: 0 6px 18px rgba(24, 144, 255, 0.12);
  padding: 32px 36px;
  position: relative;
  overflow: hidden;
  
  &::before {
    content: '';
    position: absolute;
    top: -120px;
    right: -80px;
    width: 300px;
    height: 300px;
    background: rgba(24, 144, 255, 0.03);
    border-radius: 50%;
    z-index: 0;
  }
  
  &::after {
    content: '';
    position: absolute;
    bottom: -80px;
    left: -60px;
    width: 220px;
    height: 220px;
    background: rgba(24, 144, 255, 0.035);
    border-radius: 50%;
    z-index: 0;
  }

  .list-title {
    color: #1890ff;
    font-weight: 600;
    font-size: 24px;
    line-height: 48px;
    height: 48px;
    margin-bottom: 24px;
    border-bottom: 1px solid rgba(24, 144, 255, 0.15);
    position: relative;
    z-index: 1;
    
    &::after {
      content: '';
      position: absolute;
      bottom: -1px;
      left: 0;
      width: 80px;
      height: 3px;
      background: linear-gradient(90deg, #1890ff, #40a9ff);
      border-radius: 2px;
    }
  }

  .edit-view {
    position: relative;
    z-index: 1;
    
    .item {
      -webkit-box-align: center;
      -ms-flex-align: center;
      align-items: center;
      margin: 32px 0;
      position: relative;

      .label {
        width: 110px;
        color: #444;
        font-weight: 500;
        font-size: 15px;
        position: relative;
        padding-left: 16px;
        
        &::before {
          content: '';
          position: absolute;
          left: 0;
          top: 50%;
          transform: translateY(-50%);
          width: 4px;
          height: 16px;
          background: #40a9ff;
          border-radius: 2px;
        }
      }

      .right-box {
        -webkit-box-flex: 1;
        -ms-flex: 1;
        flex: 1;
      }

      .avatar-box {
        align-items: center;
      }

      .avatar {
        width: 90px;
        height: 90px;
        border-radius: 20px;
        margin-right: 24px;
        object-fit: cover;
        border: 3px solid rgba(24, 144, 255, 0.2);
        box-shadow: 0 8px 16px rgba(24, 144, 255, 0.15);
        transition: all 0.3s ease;
        
        &:hover {
          transform: translateY(-5px) rotate(3deg);
          box-shadow: 0 12px 20px rgba(24, 144, 255, 0.25);
        }
      }

      .change-tips {
        -webkit-box-align: center;
        -ms-flex-align: center;
        align-items: center;
        -ms-flex-wrap: wrap;
        flex-wrap: wrap;
      }

      label {
        color: #1890ff;
        font-size: 15px;
        line-height: 22px;
        height: 22px;
        cursor: pointer;
        width: 130px;
        display: block;
        font-weight: 500;
        
        &:hover {
          color: #40a9ff;
          text-decoration: underline;
        }
      }

      .tip {
        color: #888;
        font-size: 13px;
        height: 22px;
        line-height: 22px;
        margin: 0;
        width: 100%;
      }

      .right-box {
        -webkit-box-flex: 1;
        -ms-flex: 1;
        flex: 1;
      }

      .input-dom {
        width: 430px;
        background: #f0f7ff;
        border: 1px solid rgba(24, 144, 255, 0.15);
        border-radius: 12px;
        height: 50px;
        line-height: 50px;
        font-size: 15px;
        color: #333;
        padding: 0 20px 0 48px;
        transition: all 0.3s ease;
        position: relative;
        background-position: 16px center;
        background-repeat: no-repeat;
        background-size: 20px;
        
        &[placeholder="请输入姓名"] {
          background-image: url('data:image/svg+xml;utf8,<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="rgba(24, 144, 255, 0.5)" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M20 21v-2a4 4 0 0 0-4-4H8a4 4 0 0 0-4 4v2"></path><circle cx="12" cy="7" r="4"></circle></svg>');
        }
        
        &[placeholder="请输入性别"] {
          background-image: url('data:image/svg+xml;utf8,<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="rgba(24, 144, 255, 0.5)" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><circle cx="12" cy="12" r="10"></circle><line x1="8" y1="14" x2="16" y2="14"></line><circle cx="9" cy="9" r="1"></circle><circle cx="15" cy="9" r="1"></circle></svg>');
        }
        
        &[placeholder="请输入学历"] {
          background-image: url('data:image/svg+xml;utf8,<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="rgba(24, 144, 255, 0.5)" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M2 3h6a4 4 0 0 1 4 4v14a3 3 0 0 0-3-3H2z"></path><path d="M22 3h-6a4 4 0 0 0-4 4v14a3 3 0 0 1 3-3h7z"></path></svg>');
        }
        
        &[placeholder="请输入学校"] {
          background-image: url('data:image/svg+xml;utf8,<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="rgba(24, 144, 255, 0.5)" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M12 2l10 6.5v7L12 22 2 15.5v-7L12 2z"></path></svg>');
        }
        
        &[placeholder="请输入邮箱"] {
          background-image: url('data:image/svg+xml;utf8,<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="rgba(24, 144, 255, 0.5)" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M4 4h16c1.1 0 2 .9 2 2v12c0 1.1-.9 2-2 2H4c-1.1 0-2-.9-2-2V6c0-1.1.9-2 2-2z"></path><polyline points="22,6 12,13 2,6"></polyline></svg>');
        }
        
        &:hover {
          border-color: rgba(24, 144, 255, 0.4);
        }
        
        &:focus {
          border-color: #1890ff;
          background-color: #fff;
          box-shadow: 0 0 0 3px rgba(24, 144, 255, 0.15);
        }
      }

      .tip {
        font-size: 12px;
        line-height: 16px;
        color: #888;
        height: 16px;
        margin-top: 8px;
        padding-left: 48px;
      }

      .intro {
        resize: none;
        background: #f0f7ff;
        width: 100%;
        padding: 16px 20px;
        height: 100px;
        line-height: 24px;
        font-size: 15px;
        color: #333;
        border: 1px solid rgba(24, 144, 255, 0.15);
        border-radius: 12px;
        transition: all 0.3s ease;
        
        &:hover {
          border-color: rgba(24, 144, 255, 0.4);
        }
        
        &:focus {
          border-color: #1890ff;
          background: #fff;
          box-shadow: 0 0 0 3px rgba(24, 144, 255, 0.15);
        }
      }
    }

    .save {
      background: linear-gradient(135deg, #1890ff 0%, #40a9ff 100%);
      border-radius: 28px;
      width: 140px;
      height: 48px;
      line-height: 48px;
      font-size: 16px;
      font-weight: 500;
      color: #fff;
      border: none;
      outline: none;
      cursor: pointer;
      box-shadow: 0 8px 15px rgba(24, 144, 255, 0.25);
      transition: all 0.3s ease;
      
      &:hover {
        background: linear-gradient(135deg, #40a9ff 0%, #096dd9 100%);
        box-shadow: 0 10px 20px rgba(24, 144, 255, 0.35);
        transform: translateY(-3px);
      }
      
      &:active {
        transform: translateY(0);
        box-shadow: 0 5px 10px rgba(24, 144, 255, 0.2);
      }
    }

    .mg {
      margin-left: 110px;
      margin-top: 24px;
    }
  }
}

// 美化上传按钮
:deep(.ant-upload) {
  .ant-btn {
    height: 40px;
    border-radius: 10px;
    border: 1px solid rgba(24, 144, 255, 0.3);
    background: #f0f7ff;
    color: #1890ff;
    transition: all 0.3s;
    
    &:hover {
      background: #e6f7ff;
      color: #40a9ff;
      border-color: rgba(24, 144, 255, 0.5);
    }
  }
}

// 增加响应式适配
@media screen and (max-width: 768px) {
  .content-list {
    padding: 20px;
    
    .edit-view {
      .item {
        flex-direction: column;
        align-items: flex-start;
        
        .label {
          margin-bottom: 8px;
          padding-left: 0;
          width: auto;
          
          &::before {
            display: none;
          }
        }
        
        .avatar-box {
          flex-direction: column;
          align-items: center;
          
          .avatar {
            margin-right: 0;
            margin-bottom: 16px;
          }
        }
        
        .input-dom {
          width: 100%;
        }
        
        .tip {
          padding-left: 0;
        }
      }
      
      .mg {
        margin-left: 0;
        width: 100%;
      }
    }
  }
}
</style>
