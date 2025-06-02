<template>
  <div class="content-list">
    <div class="list-title">我的消息</div>
    <a-spin :spinning="loading" style="min-height: 200px;">
      <div class="list-content">
      <div class="notification-view">
        <div class="list">
          <div class="notification-item flex-view" v-for="item in msgData">
            <div class="avatar-container">
              <img
                src="data:image/png;base64,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"
                class="avatar">
              <div class="status-badge"></div>
            </div>
            <div class="content-box">
              <div class="header">
                <span class="title-txt">{{item.title}}</span>
                <span class="time">{{ item.create_time }}</span>
              </div>
              <div class="head-text">
                <span class="name" style="display: none;"></span>
              </div>
              <div class="content">
                <p>{{ item.content }}</p>
              </div>
            </div>
          </div>
          <div v-if="msgData.length === 0" class="empty-container">
            <div class="empty-icon">📫</div>
            <div class="empty-text">暂无消息</div>
          </div>
        </div>
      </div>
    </div>
    </a-spin>
  </div>
</template>

<script setup>
import {listApi} from '/@/api/index/notice'


let loading = ref(false)
let msgData = ref([])

onMounted(()=>{
  getMessageList()
})

const getMessageList =()=> {
  loading.value = true
  listApi().then(res => {
    msgData.value = res.data
    loading.value = false
  }).catch(err => {
    console.log(err)
    loading.value = false
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

.notification-item {
  padding: 20px 0;
  
  .avatar-container {
    position: relative;
    margin-right: 16px;
    
    .avatar {
      width: 48px;
      height: 48px;
      border-radius: 12px;
      box-shadow: 0 4px 12px rgba(24, 144, 255, 0.15);
      transition: all 0.3s ease;
      border: 2px solid #f0f7ff;
    }
    
    .status-badge {
      position: absolute;
      right: -3px;
      bottom: -3px;
      width: 12px;
      height: 12px;
      border-radius: 50%;
      background: #52c41a;
      border: 2px solid #fff;
    }
  }

  .content-box {
    flex: 1;
    padding: 0 0 16px;
    margin-bottom: 4px;
    border-bottom: 1px solid rgba(24, 144, 255, 0.1);
    
    &:hover {
      .title-txt {
        color: #1890ff;
      }
    }
  }

  .header {
    margin-bottom: 12px;
    display: flex;
    align-items: center;
    justify-content: space-between;
  }

  .title-txt {
    color: #315c9e;
    font-weight: 600;
    font-size: 16px;
    transition: all 0.3s ease;
  }

  .time {
    color: #a1adc5;
    font-size: 14px;
    background: #f6f8fa;
    padding: 2px 10px;
    border-radius: 20px;
  }

  .head-text {
    color: #333;
    font-weight: 500;
    font-size: 15px;
    line-height: 22px;

    .name {
      margin-right: 8px;
    }
  }

  .content {
    margin-top: 6px;
    color: #666;
    font-size: 15px;
    line-height: 24px;
    
    p {
      margin: 0;
    }
  }
}

.empty-container {
  display: flex;
  flex-direction: column;
  align-items: center;
  justify-content: center;
  padding: 60px 0;
  
  .empty-icon {
    font-size: 48px;
    margin-bottom: 16px;
    color: #d9d9d9;
  }
  
  .empty-text {
    font-size: 16px;
    color: #999;
  }
}

// 响应式适配
@media screen and (max-width: 768px) {
  .content-list {
    padding: 20px;
    
    .notification-item {
      .title-txt {
        font-size: 15px;
      }
      
      .content {
        font-size: 14px;
        line-height: 22px;
      }
    }
  }
}
</style>
