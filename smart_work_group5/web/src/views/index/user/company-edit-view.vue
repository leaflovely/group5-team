<template>
  <div class="content-list">
    <div class="list-title">公司资料</div>
    <a-spin :spinning="loading" style="min-height: 200px;">
      <div class="list-content">
      <div class="edit-view">
        <div class="item flex-view">
          <div class="label">封面</div>
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
                  <label>点击更换封面</label>
                </a-upload>
              <p class="tip">图片格式支持 GIF、PNG、JPEG，尺寸不小于 200 PX，小于 4 MB</p>
            </div>
          </div>
        </div>
        <div class="item flex-view">
          <div class="label">公司名称</div>
          <div class="right-box">
            <input type="text" v-model="tData.form.title" placeholder="请输入" maxlength="20" class="input-dom">
            <p class="tip">支持中英文，长度不能超过 20 个字符</p>
          </div>
        </div>
        <div class="item flex-view">
          <div class="label">地点</div>
          <div class="right-box">
            <input type="text" v-model="tData.form.location" placeholder="请输入" maxlength="100" class="input-dom web-input">
          </div>
        </div>
        <div class="item flex-view">
          <div class="label">行业</div>
          <div class="right-box">
            <input type="text" v-model="tData.form.hangye" placeholder="请输入" maxlength="100" class="input-dom web-input">
          </div>
        </div>
        <div class="item flex-view">
          <div class="label">规模</div>
          <div class="right-box">
            <input type="text" v-model="tData.form.guimo" placeholder="请输入" maxlength="100" class="input-dom web-input">
          </div>
        </div>
        <div class="item flex-view">
          <div class="label">简介</div>
          <div class="right-box">
          <textarea v-model="tData.form.description" placeholder="请输入简介" maxlength="200" class="intro">
          </textarea>
            <p class="tip">限制200字以内</p>
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
import {listUserCompanyApi,createApi, updateApi} from '/@/api/index/company'
import {BASE_URL} from "/@/store/constants";
import {useUserStore} from "/@/store";
import AvatarIcon from '/@/assets/images/avatar.jpg'

const router = useRouter();
const userStore = useUserStore();

let loading = ref(false)
let tData = reactive({
  form:{
    id: undefined,
    avatar: undefined,
    avatarFile: undefined,
    nickname: undefined,
    email: undefined,
    mobile: undefined,
    description: undefined,
  }
})

onMounted(()=>{
  getList()
})

const beforeUpload =(file)=> {
  // 改文件名
  const fileName = new Date().getTime().toString() + '.' + file.type.substring(6)
  const copyFile = new File([file], fileName)
  console.log(copyFile)
  tData.form.avatarFile = copyFile
  return false
}

const getList =()=> {
  loading.value = true
  let userId = userStore.user_id
  listUserCompanyApi({userId: userId}).then(res => {
    if(res.data && res.data.length>0){
      tData.form = res.data[0]
      if (tData.form.cover) {
        tData.form.avatar = BASE_URL  + tData.form.cover
      }
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
  if (userId) {
    formData.append('user', userId)
  }
  if (tData.form.avatarFile) {
    formData.append('cover', tData.form.avatarFile)
  }
  if (tData.form.title) {
    formData.append('title', tData.form.title)
  }
  if (tData.form.location) {
    formData.append('location', tData.form.location)
  }
  if (tData.form.hangye) {
    formData.append('hangye', tData.form.hangye)
  }
  if (tData.form.guimo) {
    formData.append('guimo', tData.form.guimo)
  }
  if (tData.form.description) {
    formData.append('description', tData.form.description)
  }

  if(tData.form.id) {
    updateApi({
      id: tData.form.id
    },formData).then(res => {
      message.success('保存成功')
      getList()
    }).catch(err => {
      console.log(err)
    })
  } else {
    createApi(formData).then(res=>{
      getList()
    }).catch(err=>{
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

      .input-dom {
        width: 430px;
        background: #f0f7ff;
        border: 1px solid rgba(24, 144, 255, 0.15);
        border-radius: 12px;
        height: 50px;
        line-height: 50px;
        font-size: 15px;
        color: #333;
        padding: 0 20px;
        transition: all 0.3s ease;
        
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
      }
      
      .mg {
        margin-left: 0;
        width: 100%;
      }
    }
  }
}
</style>
