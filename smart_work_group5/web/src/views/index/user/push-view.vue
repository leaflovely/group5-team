<template>
  <div class="content-list">
    <div class="list-title">推送设置</div>
    <div class="list-content">
      <div class="push-view">
        <div class="item flex-view">
          <div class="label">推送邮箱</div>
          <div class="right-box">
            <input type="text" class="input-dom" placeholder="请输入邮箱" v-model="push_email">
          </div>
        </div>
        <div class="item flex-view">
          <div class="label">接受邮件消息</div>
          <div class="right-box">
            <a-switch v-model:checked="push_switch"/>
          </div>
        </div>
        <button class="save" @click="handleSave()">保存</button>
      </div>
    </div>
  </div>
</template>

<script setup>
import {message} from "ant-design-vue";
import {detailApi, updateUserInfoApi} from '/@/api/index/user'
import {useUserStore} from "/@/store";

const router = useRouter();
const userStore = useUserStore();

let push_email = ref('')
let push_switch = ref(false)

onMounted(()=>{
  getUserInfo()

})

const getUserInfo =()=> {
  let userId = userStore.user_id

  detailApi({id: userId}).then(res => {
    if (res.data) {
      push_email.value = res.data.push_email
      if(res.data.push_switch){
        push_switch.value = true
      }
    }
  }).catch(err => {
    console.log(err)
  })
}

const handleSave =()=> {
  const reg = /^[a-zA-Z0-9][a-zA-Z0-9_]+\@[a-zA-Z0-9]+\.[a-zA-Z]{2,5}(\.[a-zA-Z]{2,5})*$/i

  if (!push_email.value.match(reg)) {
    message.warn('请输入正确的邮箱格式')
    return
  }

  let userId = userStore.user_id
  const formData = new FormData()
  if (push_email.value) {
    formData.append('push_email', push_email.value)
  }
  formData.append('push_switch', push_switch.value? 'true':'false')
  updateUserInfoApi({
    id:userId
  },formData).then(res => {
    getUserInfo()
    message.success('保存成功')
  }).catch(err => {
    console.log(err)
  })
}

</script>
<style scoped lang="less">
.flex-view {
  display: flex;
}

input, textarea {
  outline: none;
  border-style: none;
  transition: all 0.3s ease;
}

button {
  padding: 0;
}

.content-list {
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
  
  .list-content {
    position: relative;
    z-index: 1;
  }
}

.push-view {
  .item {
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

    .input-dom {
      background: #f0f7ff;
      border: 1px solid rgba(24, 144, 255, 0.15);
      border-radius: 12px;
      width: 430px;
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
  }

  .save {
    margin-left: 110px;
    margin-top: 24px;
    cursor: pointer;
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
}

// 美化ant-design组件
:deep(.ant-switch) {
  background-color: #d9d9d9;
  min-width: 50px;
  height: 24px;
  
  &-handle {
    height: 20px;
    width: 20px;
  }
  
  &-checked {
    background-color: #1890ff;
    
    &:hover:not(.ant-switch-disabled) {
      background-color: #40a9ff;
    }
  }
}

// 响应式适配
@media screen and (max-width: 768px) {
  .content-list {
    padding: 20px;
    
    .push-view {
      .item {
        flex-direction: column;
        align-items: flex-start;
        
        .label {
          margin-bottom: 12px;
          padding-left: 0;
          
          &::before {
            display: none;
          }
        }
        
        .input-dom {
          width: 100%;
        }
      }
      
      .save {
        margin-left: 0;
        width: 100%;
      }
    }
  }
}
</style>
