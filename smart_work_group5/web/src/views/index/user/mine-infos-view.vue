<template>
  <div class="mine-infos-view">
    <div class="info-box flex-view">
      <div class="avatar-container">
        <img :src="AvatarImg" class="avatar-img">
        <div class="status-badge"></div>
      </div>
      <div class="name-box">
        <h2 class="nick">{{ userStore.user_name }}</h2>
        <div class="age">
          <span>活跃1天</span>
        </div>
      </div>
    </div>
    <div class="data-stats">
      <div class="stat-item" @click="clickMenu('collectThingView')">
        <div class="stat-icon collect-icon">
          <i class="stat-icon-inner"></i>
        </div>
        <div class="stat-content">
          <div class="stat-value">{{collectCount}}</div>
          <div class="stat-label">收藏</div>
        </div>
      </div>
      <div class="stat-item" @click="clickMenu('wishThingView')">
        <div class="stat-icon wish-icon">
          <i class="stat-icon-inner"></i>
        </div>
        <div class="stat-content">
          <div class="stat-value">{{wishCount}}</div>
          <div class="stat-label">心愿单</div>
        </div>
      </div>
    </div>
    <div class="section-divider">
      <span>求职中心</span>
    </div>
    <div class="menu-section">
      <div class="mine-item flex-view" @click="clickMenu('myPostView')">
        <div class="menu-icon"><img :src="SettingIconImage" alt="编辑资料"></div>
        <span>我的投递</span>
      </div>
      <div class="mine-item flex-view" @click="clickMenu('resumeEditView')">
        <div class="menu-icon"><img :src="SettingIconImage" alt="编辑资料"></div>
        <span>我的简历</span>
      </div>
      <div class="mine-item flex-view" @click="clickMenu('commentView')">
        <div class="menu-icon"><img :src="SettingIconImage"></div>
        <span>我的评论</span>
      </div>
    </div>
    <div class="section-divider">
      <span>招聘中心</span>
    </div>
    <div class="menu-section">
      <div class="mine-item flex-view" @click="clickMenu('companyPostView')">
        <div class="menu-icon"><img :src="CommentIconImg"></div>
        <span>投递管理</span>
      </div>
      <div class="mine-item flex-view" @click="clickMenu('myThingView')">
        <div class="menu-icon"><img :src="CommentIconImg"></div>
        <span>岗位管理</span>
      </div>
      <div class="mine-item flex-view" @click="clickMenu('myCompanyView')">
        <div class="menu-icon"><img :src="CommentIconImg"></div>
        <span>公司资料</span>
      </div>
    </div>
    <div class="section-divider">
      <span>系统设置</span>
    </div>
    <div class="menu-section">
      <div class="mine-item flex-view" @click="clickMenu('userInfoEditView')">
        <div class="menu-icon"><img :src="SettingIconImage" alt="编辑资料"></div>
        <span>编辑资料</span>
      </div>
      <div class="mine-item flex-view" @click="clickMenu('securityView')">
        <div class="menu-icon"><img :src="SafeIconImage" alt="账号安全"></div>
        <span>账号安全</span>
      </div>
      <div class="mine-item flex-view" @click="clickMenu('pushView')">
        <div class="menu-icon"><img :src="PushIconImage" alt="推送设置"></div>
        <span>推送设置</span>
      </div>
      <div class="mine-item flex-view" @click="clickMenu('messageView')">
        <div class="menu-icon"><img :src="MessageIconImage" alt="消息管理"></div>
        <span>消息管理</span>
      </div>
    </div>
  </div>
</template>

<script setup lang="ts">
import AvatarImg from '/@/assets/images/avatar.jpg'
import MyOrderImg from '/@/assets/images/order-icon.svg'
import CommentIconImg from '/@/assets/images/order-thing-icon.svg'
import AddressIconImage from '/@/assets/images/order-address-icon.svg'
import PointIconImage from '/@/assets/images/order-point-icon.svg'
import SettingIconImage from '/@/assets/images/setting-icon.svg'
import SafeIconImage from '/@/assets/images/setting-safe-icon.svg'
import PushIconImage from '/@/assets/images/setting-push-icon.svg'
import MessageIconImage from '/@/assets/images/setting-msg-icon.svg'

import {getCollectThingListApi} from '/@/api/index/thing'
import {getWishThingListApi} from '/@/api/index/thing'
import {useUserStore} from '/@/store';
const userStore = useUserStore();
const router = useRouter();


let collectCount = ref(0)
let wishCount = ref(0)

onMounted(()=>{
  getCollectThingList()
  getWishThingList()
})

const clickMenu =(name)=> {
  router.push({name: name})
}
const getCollectThingList =()=> {
  let username = userStore.user_name
  getCollectThingListApi({username: username}).then(res => {
    collectCount.value = res.data.length
  }).catch(err => {
    console.log(err.msg)
  })
}

const getWishThingList =()=> {
  let username = userStore.user_name
  getWishThingListApi({username: username}).then(res => {
    wishCount.value = res.data.length
  }).catch(err => {
    console.log(err.msg)
  })
}

</script>

<style scoped lang="less">
.flex-view {
  display: flex;
}

.mine-infos-view {
  width: 260px;
  margin-right: 20px;
  border: none;
  border-radius: 20px;
  box-shadow: 0 6px 18px rgba(24, 144, 255, 0.12);
  background-color: #fff;
  overflow: hidden;
  height: fit-content;
}

.info-box {
  position: relative;
  padding: 24px 20px;
  background: linear-gradient(135deg, #1890ff 0%, #40a9ff 100%);
  color: #fff;
  align-items: center;
  overflow: hidden;
  
  &::before {
    content: '';
    position: absolute;
    top: -20px;
    left: -20px;
    width: 120px;
    height: 120px;
    border-radius: 50%;
    background: rgba(255, 255, 255, 0.1);
  }
  
  &::after {
    content: '';
    position: absolute;
    bottom: -40px;
    right: -20px;
    width: 160px;
    height: 160px;
    border-radius: 50%;
    background: rgba(255, 255, 255, 0.08);
  }
}

.avatar-container {
  position: relative;
  margin-right: 16px;
}

.status-badge {
  position: absolute;
  right: 0;
  bottom: 4px;
  width: 12px;
  height: 12px;
  border-radius: 50%;
  background: #4cd964;
  border: 2px solid #fff;
  box-shadow: 0 2px 4px rgba(0, 0, 0, 0.2);
}

.avatar-img {
  width: 64px;
  height: 64px;
  border-radius: 16px;
  border: 3px solid rgba(255, 255, 255, 0.8);
  box-shadow: 0 4px 12px rgba(0, 0, 0, 0.15);
  object-fit: cover;
  transition: all 0.3s ease;
  
  &:hover {
    transform: translateY(-3px);
    box-shadow: 0 8px 18px rgba(0, 0, 0, 0.2);
  }
}

.name-box {
  flex: 1;
  overflow: hidden;
  z-index: 1;

  .nick {
    color: #fff;
    font-weight: 600;
    font-size: 20px;
    line-height: 26px;
    height: 26px;
    text-overflow: ellipsis;
    white-space: nowrap;
    margin: 0;
    overflow: hidden;
    text-shadow: 0 1px 2px rgba(0, 0, 0, 0.15);
  }

  .age {
    font-size: 13px;
    color: rgba(255, 255, 255, 0.8);
    height: 18px;
    line-height: 18px;
    margin-top: 8px;
    padding: 0 8px;
    background: rgba(0, 0, 0, 0.2);
    border-radius: 10px;
    display: inline-block;
  }
}

.menu-container {
  padding: 16px 0;
}

.section-divider {
  position: relative;
  text-align: center;
  margin: 20px 16px 12px;
  height: 20px;
  
  &::before {
    content: '';
    position: absolute;
    left: 0;
    right: 0;
    top: 50%;
    height: 1px;
    background: #eee;
    z-index: 0;
  }
  
  span {
    position: relative;
    padding: 0 12px;
    background: #fff;
    color: #1890ff;
    font-size: 14px;
    font-weight: 500;
    z-index: 1;
  }
}

.data-stats {
  display: flex;
  padding: 0 16px;
  margin-bottom: 8px;
  
  .stat-item {
    flex: 1;
    background: #f0f7ff;
    border-radius: 16px;
    padding: 14px;
    cursor: pointer;
    transition: all 0.3s ease;
    display: flex;
    align-items: center;
    
    &:first-child {
      margin-right: 8px;
    }
    
    &:hover {
      background: #e6f7ff;
      transform: translateY(-3px);
    }
    
    .stat-icon {
      width: 40px;
      height: 40px;
      border-radius: 12px;
      background: rgba(24, 144, 255, 0.1);
      display: flex;
      align-items: center;
      justify-content: center;
      margin-right: 10px;
      position: relative;
      
      &.collect-icon .stat-icon-inner:before {
        content: '♥';
        color: #1890ff;
        font-size: 18px;
      }
      
      &.wish-icon .stat-icon-inner:before {
        content: '★';
        color: #1890ff;
        font-size: 18px;
      }
    }
    
    .stat-content {
      flex: 1;
      
      .stat-value {
        font-size: 18px;
        font-weight: 600;
        color: #1890ff;
        line-height: 20px;
      }
      
      .stat-label {
        font-size: 13px;
        color: #9d9d9d;
        line-height: 16px;
        margin-top: 4px;
      }
    }
  }
}

.menu-section {
  padding: 4px 12px;
  
  .mine-item {
    padding: 12px 14px;
    border-radius: 12px;
    cursor: pointer;
    align-items: center;
    margin-bottom: 2px;
    transition: all 0.25s ease;
    position: relative;
    
    .menu-icon {
      width: 28px;
      height: 28px;
      border-radius: 8px;
      background: rgba(24, 144, 255, 0.08);
      margin-right: 12px;
      display: flex;
      align-items: center;
      justify-content: center;
      flex-shrink: 0;
      transition: all 0.25s ease;
      
      img {
        width: 16px;
        height: 16px;
        opacity: 0.7;
        transition: all 0.25s ease;
      }
    }
    
    span {
      flex: 1;
      color: #505050;
      font-size: 14px;
      font-weight: 400;
      transition: all 0.25s ease;
    }
    
    &::after {
      content: '';
      position: absolute;
      right: 14px;
      width: 6px;
      height: 6px;
      border-top: 2px solid #ccc;
      border-right: 2px solid #ccc;
      transform: rotate(45deg);
      opacity: 0;
      transition: all 0.25s ease;
    }
    
    &:hover {
      background: rgba(24, 144, 255, 0.06);
      
      .menu-icon {
        background: rgba(24, 144, 255, 0.15);
        
        img {
          opacity: 1;
        }
      }
      
      span {
        color: #1890ff;
        transform: translateX(4px);
      }
      
      &::after {
        opacity: 1;
        border-color: #1890ff;
      }
    }
    
    &.active {
      background: rgba(24, 144, 255, 0.1);
      
      .menu-icon {
        background: rgba(24, 144, 255, 0.2);
      }
      
      span {
        color: #1890ff;
        font-weight: 600;
      }
      
      &::after {
        opacity: 1;
        border-color: #1890ff;
      }
    }
  }
}

// 路由激活状态
.router-link-active {
  .mine-item {
    background: rgba(24, 144, 255, 0.1) !important;
    
    .menu-icon {
      background: rgba(24, 144, 255, 0.2) !important;
      
      img {
        opacity: 1 !important;
      }
    }
    
    span {
      color: #1890ff !important;
      font-weight: 500 !important;
      transform: translateX(4px);
    }
    
    &::after {
      opacity: 1 !important;
      border-color: #1890ff !important;
    }
  }
}
</style>
