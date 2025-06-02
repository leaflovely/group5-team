<template>
  <div class="content-list">
    <div class="list-title">帐号安全</div>
    <div class="list-content">
      <div class="safe-view">
        <div class="safe-info-box">
          <div class="item flex-view">
            <div class="label">账号安全等级</div>
            <div class="right-box flex-center flex-view">
              <div class="safe-text">低风险</div>
              <div class="progress-container">
                <div class="progress-bar"></div>
              </div>
            </div>
          </div>
          <div class="item flex-view">
            <div class="label">绑定手机</div>
            <div class="right-box">
              <input class="input-dom" placeholder="请输入手机号">
              <a-button class="custom-btn" type="primary" @click="handleBindMobile()">更换</a-button>
            </div>
          </div>
        </div>
        <div class="edit-pwd-box">
          <div class="pwd-edit">
            <div class="item flex-view">
              <div class="label">当前密码</div>
              <div class="right-box">
                <a-input-password placeholder="输入当前密码" v-model:value="password"/>
              </div>
            </div>
            <div class="item flex-view">
              <div class="label">新密码</div>
              <div class="right-box">
                <a-input-password placeholder="输入新密码" v-model:value="newPassword1"/>
              </div>
            </div>
            <div class="item flex-view">
              <div class="label">确认新密码</div>
              <div class="right-box">
                <a-input-password placeholder="重复输入密码" v-model:value="newPassword2"/>
              </div>
            </div>
            <div class="item flex-view">
              <div class="label">
              </div>
              <div class="right-box">
                <a-button class="update-pwd-btn" type="primary" @click="handleUpdatePwd()">修改密码</a-button>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<script setup>
import {message} from "ant-design-vue";

import {updateUserPwdApi} from '/@/api/index/user'
import {useUserStore} from "/@/store";

const router = useRouter();
const userStore = useUserStore();

let password = ref('')
let newPassword1 = ref('')
let newPassword2 = ref('')

const handleBindMobile = () => {
  message.info('功能开发中')
}

const handleUpdatePwd = () => {
  if (!password.value || !newPassword1.value || !newPassword2.value) {
    message.warn('不能为空')
    return
  }
  if (newPassword1.value !== newPassword2.value) {
    message.warn('密码不一致')
    return
  }

  let userId = userStore.user_id
  updateUserPwdApi({
    id: userId
  }, {
    password: password.value,
    newPassword1: newPassword1.value,
    newPassword2: newPassword2.value,
  }).then(res => {
    message.success('修改成功')
  }).catch(err => {
    message.error(err.msg)
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

.safe-view {
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

    .flex-center {
      align-items: center;
    }

    .safe-text {
      color: #f6982a;
      font-weight: 600;
      font-size: 15px;
      margin-right: 18px;
    }
    
    .progress-container {
      width: 280px;
      height: 10px;
      background: #e6f7ff;
      border-radius: 8px;
      overflow: hidden;
      position: relative;
      
      .progress-bar {
        position: absolute;
        left: 0;
        top: 0;
        height: 100%;
        width: 66%;
        background: linear-gradient(90deg, #faad14, #ffc53d);
        border-radius: 8px;
      }
    }

    .input-dom {
      background: #f0f7ff;
      border: 1px solid rgba(24, 144, 255, 0.15);
      border-radius: 12px;
      width: 280px;
      height: 50px;
      line-height: 50px;
      font-size: 15px;
      color: #333;
      padding: 0 20px;
      margin-right: 16px;
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

    .change-btn {
      color: #1890ff;
      font-size: 15px;
      border: none;
      outline: none;
      cursor: pointer;
    }

    .wx-text {
      color: #5f77a6;
      font-size: 15px;
      margin-right: 16px;
    }

    .edit-pwd-btn {
      color: #1890ff;
      font-size: 15px;
      cursor: pointer;
    }
  }
}

// 美化ant-design组件
:deep(.ant-input-affix-wrapper) {
  border-radius: 12px;
  height: 50px;
  border: 1px solid rgba(24, 144, 255, 0.15);
  background: #f0f7ff;
  transition: all 0.3s ease;
  
  &:hover {
    border-color: rgba(24, 144, 255, 0.4);
  }
  
  &:focus, &-focused {
    border-color: #1890ff;
    box-shadow: 0 0 0 3px rgba(24, 144, 255, 0.15);
  }
  
  input.ant-input {
    background: transparent;
    font-size: 15px;
    color: #333;
  }
}

:deep(.ant-btn) {
  &.custom-btn {
    height: 50px;
    border-radius: 12px;
    font-size: 15px;
    background: #f0f7ff;
    border: 1px solid rgba(24, 144, 255, 0.3);
    color: #1890ff;
    box-shadow: none;
    
    &:hover {
      background: #e6f7ff;
      color: #40a9ff;
      border-color: rgba(24, 144, 255, 0.5);
    }
  }
  
  &.update-pwd-btn {
    height: 48px;
    border-radius: 28px;
    padding: 0 32px;
    font-size: 16px;
    font-weight: 500;
    background: linear-gradient(135deg, #1890ff 0%, #40a9ff 100%);
    border: none;
    color: #fff;
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

// 响应式适配
@media screen and (max-width: 768px) {
  .content-list {
    padding: 20px;
    
    .safe-view .item {
      flex-direction: column;
      align-items: flex-start;
      
      .label {
        margin-bottom: 12px;
        padding-left: 0;
        
        &::before {
          display: none;
        }
      }
      
      .right-box {
        width: 100%;
        
        .input-dom {
          width: calc(100% - 100px);
        }
        
        .progress-container {
          width: 100%;
        }
      }
    }
  }
}
</style>
