<template>
  <div class="detail modern-detail-bg">
    <Header/>

    <div class="detail-content modern-detail-content">
      <div class="detail-content-top">
        <div style="position: relative;">
          <div class="thing-infos-view modern-card">
            <div class="thing-infos">
              <!--              <div class="thing-img-box">-->
              <!--                <img :src="CompanyIcon"/>-->
              <!--              </div>-->
              <div class="thing-info-box">
                <div class="thing-state">
                  <span class="state hidden-sm">岗位状态</span>
                  <span>正常</span>
                </div>
                <h1 class="thing-name">{{ detailData.title }}</h1>
                <span class="modern-salary">
                  <span class="a-price-symbol"></span>
                  <span class="a-price">{{ detailData.salary }}</span>
                </span>
                <div class="translators flex-view" style="">
                  <span>所属公司：</span>
                  <span class="name">{{ detailData.company_title }}</span>
                </div>
                <div class="translators flex-view" style="">
                  <span>工作地点：</span>
                  <span class="name">{{ detailData.location }}</span>
                </div>
                <div class="translators flex-view" style="">
                  <span>学历要求：</span>
                  <span class="name">{{ detailData.education }}</span>
                </div>
                <div class="translators flex-view" style="">
                  <span>经验要求：</span>
                  <span class="name">{{ detailData.work_expe }}</span>
                </div>
                <div class="translators flex-view" style="">
                  <span>岗位描述：</span>
                  <span class="name">{{ detailData.description }}</span>
                </div>

                <a-popconfirm title="确定投递?" ok-text="是" cancel-text="否" @confirm="handleOrder(detailData)">
                  <button class="buy-btn modern-btn">
                    <img :src="AddIcon"/>
                    <span>投递简历</span>
                  </button>
                </a-popconfirm>

              </div>
            </div>
            
          </div>
        </div>
      </div>
      <div class="detail-content-bottom flex-view">
        <div class="main-content modern-card">
          <div class="order-view main-tab">
            <span class="tab"
                  :class="selectTabIndex===index? 'tab-select modern-tab-select':''"
                  v-for="(item,index) in tabData"
                  :key="index"
                  @click="selectTab(index)">
              {{ item }}
            </span>
          </div>

          <!--简介-->
          <div class="thing-intro" :class="selectTabIndex === 0 ? '' : 'hide'">
            <p class="text" style="">{{ detailData.description }}</p>
          </div>

          <!--评论-->
          <div class="thing-comment" :class="selectTabIndex === 1 ? '' : 'hide'">
            <div class="title">发表新的评论</div>
            <div class="publish flex-view">
              <img :src="AvatarIcon" class="mine-img">
              <input placeholder="说点什么..." class="content-input modern-input" ref="commentRef">
              <button class="send-btn modern-btn" @click="sendComment()">发送</button>
            </div>
            <div class="tab-view flex-view">
              <div class="count-text">共有{{ commentData.length }}条评论</div>
              <div class="tab-box flex-view" v-if="commentData.length > 0">
                <span :class="sortIndex === 0? 'tab-select modern-tab-select': ''" @click="sortCommentList('recent')">最新</span>
                <div class="line"></div>
                <span :class="sortIndex === 1? 'tab-select modern-tab-select': ''" @click="sortCommentList('hot')">热门</span>
              </div>
            </div>
            <div class="comments-list">
              <div class="comment-item modern-comment-card" v-for="item in commentData">
                <div class="flex-item flex-view">
                  <img :src="AvatarIcon" class="avator">
                  <div class="person">
                    <div class="name">{{ item.username }}</div>
                    <div class="time">{{ item.comment_time }}</div>
                  </div>
                  <div class="float-right">
                    <span @click="like(item.id)" class="modern-btn-link">推荐</span>
                    <span class="num">{{ item.like_count }}</span>
                  </div>
                </div>
                <p class="comment-content">{{ item.content }}</p>
              </div>
              <div class="infinite-loading-container">
                <div class="infinite-status-prompt" style="">
                  <div slot="no-results" class="no-results">
                    <div></div>
                    <p>没有更多了</p>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="recommend modern-card">
          <div class="title">热门推荐</div>
          <div class="things">
            <!--              <div class="thing-item thing-item" v-for="item in recommendData" @click="handleDetail(item)">-->
            <!--                <div class="img-view">-->
            <!--                  <img :src="item.cover"></div>-->
            <!--                <div class="info-view">-->
            <!--                  <h3 class="thing-name">{{ item.title.substring(0, 12)}}</h3>-->
            <!--                  <span>-->
            <!--                    <span class="a-price-symbol">¥</span>-->
            <!--                    <span class="a-price">{{item.price}}</span>-->
            <!--                  </span>-->
            <!--                </div>-->
            <!--              </div>-->
            <div class="sub-li modern-recommend-card" v-for="item in recommendData" @click="handleDetail(item)">
              <a class="job-info" target="_blank">
                <div class="sub-li-top">
                  <div class="sub-li-info">
                    <p class="name">{{ item.title }}</p>
                  </div>
                  <p class="salary">{{ item.salary }}</p>
                </div>
                <p class="job-text">
                  <span>{{ item.location }}</span>
                  <span>{{ item.work_expe }}</span>
                  <span>{{ item.education }}</span>
                </p>
              </a>
            </div>

          </div>
        </div>
      </div>
    </div>

    <Footer/>
  </div>
</template>
<script setup>
import {message} from "ant-design-vue";
import Header from '/@/views/index/components/header.vue'
import Footer from '/@/views/index/components/footer.vue'
import AddIcon from '/@/assets/images/add.svg';
import WantIcon from '/@/assets/images/want-read-hover.svg';
import RecommendIcon from '/@/assets/images/recommend-hover.svg';
import ShareIcon from '/@/assets/images/share-icon.svg';
import WeiboShareIcon from '/@/assets/images/wb-share.svg';
import AvatarIcon from '/@/assets/images/avatar.jpg';
import CompanyIcon from '/@/assets/images/ic-company.png';
import {
  detailApi,
  listApi as listThingList,
} from '/@/api/index/thing'
import {
  detailApi as resumeDetailApi
} from '/@/api/index/resume'
import {
  createApi as createPostApi
} from '/@/api/index/post'
import {listThingCommentsApi, createApi as createCommentApi, likeApi} from '/@/api/index/comment'
import {addWishUserApi} from '/@/api/index/thing'
import {addCollectUserApi} from '/@/api/index/thing'
import {BASE_URL} from "/@/store/constants";
import {useRoute, useRouter} from "vue-router/dist/vue-router";
import {useUserStore} from "/@/store";
import {getFormatTime} from "/@/utils";

const router = useRouter()
const route = useRoute()
const userStore = useUserStore();


let thingId = ref('')
let detailData = ref({})
let tabUnderLeft = ref(6)
let tabData = ref(['简介', '面试评价'])
let selectTabIndex = ref(1)

let commentData = ref([])
let recommendData = ref([])
let sortIndex = ref(0)
let order = ref('recent') // 默认排序最新

let commentRef = ref()

onMounted(() => {
  thingId.value = route.query.id.trim()
  getThingDetail()
  getRecommendThing()
  getCommentList()
})

const selectTab = (index) => {
  selectTabIndex.value = index
  tabUnderLeft.value = 6 + 54 * index
}

const getThingDetail = () => {
  detailApi({id: thingId.value}).then(res => {
    detailData.value = res.data
    detailData.value.cover = BASE_URL + detailData.value.cover
  }).catch(err => {
    message.error('获取详情失败')
  })
}
const addToWish = () => {
  let username = userStore.user_name
  if (username) {
    addWishUserApi({thingId: thingId.value, username: username}).then(res => {
      message.success(res.msg)
      getThingDetail()
    }).catch(err => {
      console.log('操作失败')
    })
  } else {
    message.warn('请先登录')
  }
}
const collect = () => {
  let username = userStore.user_name
  if (username) {
    addCollectUserApi({thingId: thingId.value, username: username}).then(res => {
      message.success(res.msg)
      getThingDetail()
    }).catch(err => {
      console.log('收藏失败')
    })
  } else {
    message.warn('请先登录')
  }
}
const share = () => {
  let content = '分享一个非常好玩的网站 ' + window.location.href
  let shareHref = 'http://service.weibo.com/share/share.php?title=' + content
  window.open(shareHref)
}
const handleOrder = (detailData) => {
  console.log(detailData)
  const userId = userStore.user_id

  if (!userId) {
    message.warn("请先登录")
    return
  }

  // 获取简历
  resumeDetailApi({
    user: userId
  }).then(res => {
    console.log(res.data)
    let resumeId = res.data.id
    let companyId = detailData.company
    let thingId = detailData.id
    console.log(resumeId, companyId, userId)
    createPostApi({
      user: userId,
      company: companyId,
      resume: resumeId,
      thing: thingId
    }).then(res => {
      message.success("投递成功")
    }).catch(err =>{
      message.success(err.msg || "投递失败")
    })
  }).catch(err => {
    message.warn("请完善简历")
    router.push({name: 'resumeEditView'})
  })

}
const getRecommendThing = () => {
  listThingList({sort: 'recommend'}).then(res => {
    res.data.forEach((item, index) => {
      if (item.cover) {
        item.cover = BASE_URL + item.cover
      }
    })
    console.log(res)
    recommendData.value = res.data.slice(0, 6)
  }).catch(err => {
    console.log(err)
  })
}
const handleDetail = (item) => {
  // 跳转新页面
  let text = router.resolve({name: 'detail', query: {id: item.id}})
  window.open(text.href, '_blank')
}
const sendComment = () => {
  console.log(commentRef.value)
  let text = commentRef.value.value.trim()
  console.log(text)
  if (text.length <= 0) {
    return
  }
  commentRef.value.value = ''
  let userId = userStore.user_id
  if (userId) {
    createCommentApi({content: text, thing: thingId.value, user: userId}).then(res => {
      getCommentList()
    }).catch(err => {
      console.log(err)
    })
  } else {
    message.warn('请先登录！')
    router.push({name: 'login'})
  }
}
const like = (commentId) => {
  likeApi({commentId: commentId}).then(res => {
    getCommentList()
  }).catch(err => {
    console.log(err)
  })
}
const getCommentList = () => {
  listThingCommentsApi({thingId: thingId.value, order: order.value}).then(res => {
    commentData.value = res.data
  }).catch(err => {
    console.log(err)
  })
}
const sortCommentList = (sortType) => {
  if (sortType === 'recent') {
    sortIndex.value = 0
  } else {
    sortIndex.value = 1
  }
  order.value = sortType
  getCommentList()
}

</script>
<style scoped lang="less">
body, .modern-detail-bg, .modern-detail-content, .modern-card, .main-content, .recommend, .thing-intro, .thing-comment, .modern-comment-card, .modern-recommend-card {
  font-family: 'Segoe UI', 'PingFang SC', 'Hiragino Sans GB', 'Microsoft YaHei', Arial, sans-serif;
  color: #222;
  font-size: 16px;
  letter-spacing: 0.02em;
}

.modern-card, .modern-comment-card, .modern-recommend-card {
  font-size: 16px;
}

.thing-name {
  font-size: 28px;
  font-weight: 700;
  color: #222;
  margin-bottom: 8px;
}

.translators, .thing-info-box span, .thing-info-box .name {
  font-size: 15px;
  color: #555;
}

.modern-salary {
  font-size: 22px;
  font-weight: 700;
  color: #ff4d4f;
}

.modern-btn, .send-btn {
  display: flex;
  align-items: center;
  justify-content: center;
  height: 48px;
  min-width: 160px;
  font-size: 20px;
  font-weight: 700;
  line-height: 1;
  padding: 0 32px;
  box-sizing: border-box;
  white-space: nowrap;
  gap: 10px;
  color: #fff !important;
  text-align: center;
  vertical-align: middle;
  position: relative;
}

.modern-btn span, .send-btn span {
  color: #fff !important;
  display: inline-block;
  text-align: center;
  vertical-align: middle;
  position: relative;
  top: -2px;
}

.modern-btn img, .send-btn img {
  margin-right: 6px;
  vertical-align: middle;
  display: inline-block;
  width: 20px;
  height: 20px;
  position: relative;
  top: -2px;
}

.order-view .tab, .order-view .tab-select, .modern-tab-select {
  font-size: 16px;
  font-weight: 500;
  letter-spacing: 0.01em;
}

.thing-comment .title {
  font-size: 17px;
  font-weight: 600;
  color: #222;
}

.comment-content {
  font-size: 15px;
  color: #444;
}

.recommend .title {
  font-size: 18px;
  font-weight: 700;
  color: #222;
}

.modern-recommend-card .name {
  font-size: 16px;
  font-weight: 600;
}

.modern-recommend-card .salary {
  font-size: 16px;
  font-weight: 600;
  color: #ff4d4f;
}

.hide {
  display: none;
}

.detail-content {
  display: flex;
  flex-direction: column;
  width: 1100px;
  margin: 4px auto;
}

.flex-view {
  display: -webkit-box;
  display: -ms-flexbox;
  display: flex;
}

.hidden-lg {
  display: none !important;
}

.modern-detail-bg {
  background: #f6f8fa;
  min-height: 100vh;
}
.modern-detail-content {
  max-width: 1200px;
  margin: 0 auto;
  padding: 32px 0 0 0;
}
.modern-card {
  background: #fff;
  border-radius: 20px;
  box-shadow: 0 4px 24px rgba(24, 144, 255, 0.10);
  padding: 32px 36px 28px 36px;
  margin-bottom: 32px;
}
.modern-btn {
  background: #1890ff;
  color: #fff;
  border: none;
  border-radius: 18px;
  padding: 8px 28px;
  font-size: 16px;
  font-weight: 600;
  box-shadow: 0 2px 8px rgba(24, 144, 255, 0.10);
  transition: all 0.2s;
  cursor: pointer;
  &:hover {
    background: #40a9ff;
    box-shadow: 0 4px 16px rgba(24, 144, 255, 0.18);
    color: #fff;
  }
}
.modern-btn-link {
  color: #1890ff;
  cursor: pointer;
  font-weight: 500;
  border-radius: 8px;
  padding: 2px 10px;
  transition: background 0.2s;
  &:hover {
    background: #e6f7ff;
    color: #40a9ff;
  }
}
.modern-input {
  border-radius: 16px;
  border: 1px solid #e6f7ff;
  padding: 8px 16px;
  font-size: 15px;
  margin: 0 12px;
  background: #fafdff;
  transition: border 0.2s;
  &:focus {
    border: 1.5px solid #1890ff;
    background: #fff;
  }
}
.modern-comment-card {
  background: #fafdff;
  border-radius: 14px;
  box-shadow: 0 2px 8px rgba(24, 144, 255, 0.06);
  padding: 16px 18px 10px 18px;
  margin-bottom: 18px;
}
.modern-tab-select {
  background: #1890ff !important;
  color: #fff !important;
  border-radius: 16px;
  padding: 4px 18px;
  font-weight: 600;
  transition: all 0.2s;
}
.modern-recommend-card {
  background: #fafdff;
  border-radius: 14px;
  box-shadow: 0 2px 8px rgba(24, 144, 255, 0.06);
  padding: 14px 18px 10px 18px;
  margin-bottom: 16px;
  cursor: pointer;
  transition: box-shadow 0.2s, transform 0.2s;
  &:hover {
    box-shadow: 0 6px 18px rgba(24, 144, 255, 0.13);
    transform: translateY(-2px) scale(1.01);
  }
}

.buy-btn {
  cursor: pointer;
  display: block;
  background: #4684e2;
  border-radius: 4px;
  text-align: center;
  color: #fff;
  font-size: 14px;
  height: 36px;
  line-height: 36px;
  width: 110px;
  outline: none;
  border: none;
  margin-top: 18px;
}

.buy-btn img {
  width: 12px;
  margin-right: 2px;
  vertical-align: middle;
}

.buy-btn span {
  vertical-align: middle;
}

.buy-way {
  overflow: hidden;

  .title {
    font-weight: 600;
    font-size: 18px;
    height: 26px;
    line-height: 26px;
    color: #152844;
    margin-bottom: 12px;
  }
}

.thing-content-view {
  margin-top: 40px;
  padding-bottom: 50px;
}

.main-content {
  -webkit-box-flex: 1;
  -ms-flex: 1;
  flex: 1;

  .text {
    color: #484848;
    font-size: 16px;
    line-height: 26px;
    padding-left: 12px;
    margin: 11px 0;
    white-space: pre-wrap;
  }
}

.main-tab {
  border-bottom: 1px solid #cedce4;
}

.order-view {
  position: relative;
  color: #6c6c6c;
  font-size: 14px;
  line-height: 40px;

  .title {
    margin-right: 8px;
  }

  .tab {
    margin-right: 20px;
    cursor: pointer;
    color: #5f77a6;
    font-size: 16px;
    cursor: pointer;
  }

  .tab-select {
    color: #152844;
    font-weight: 600;
  }

  .tab-underline {
    position: absolute;
    bottom: 0;
    left: 84px;
    width: 16px;
    height: 4px;
    background: #4684e2;
    -webkit-transition: left .3s;
    transition: left .3s;
  }
}

.recommend {
  -webkit-box-flex: 0;
  -ms-flex: 0 0 235px;
  flex: 0 0 235px;
  margin-left: 20px;

  .title {
    font-weight: 600;
    font-size: 18px;
    line-height: 26px;
    color: #152844;
    margin-bottom: 12px;
  }

  .things {
    border-top: 1px solid #cedce4;
    display: flex;
    flex-direction: column;
    gap: 24px;
    padding-top: 24px;

    .sub-li {
      background-color: #f6fbfb;
      height: 120px;
      overflow: hidden;
      transition: all .2s linear;
      display: block;
      width: 260px;
      font-size: 0;
      padding: 16px 20px;
      box-sizing: border-box;

      .job-info {
        padding: 16px 20px;
        box-sizing: border-box;
      }

      .sub-li-top {
        margin-bottom: 12px;
        display: flex;
        width: 100%;
        align-items: center;

        .name {
          color: #222;
          font-size: 16px;
          font-weight: 500;
          line-height: 22px;
          transition: all .2s linear;
          position: relative;
          max-width: 200px;
          margin-right: 8px;
          overflow: hidden;
          text-overflow: ellipsis;
          white-space: nowrap;
        }

        .salary {
          font-size: 16px;
          font-weight: 500;
          color: #fe574a;
          line-height: 22px;
          flex: none;
        }
      }

      .sub-li-info {
        display: flex;
        align-items: center;
        flex-wrap: wrap;
        height: 22px;
        overflow: hidden;
        flex: 1;
      }

      .job-text {
        white-space: normal;
        padding-right: 0;
        height: 22px;
        line-height: 22px;
        overflow: hidden;
        word-break: break-all;
        max-width: none;

        span {
          display: inline-block;
          height: 18px;
          font-size: 13px;
          font-weight: 400;
          color: #666;
          line-height: 18px;
          padding-right: 20px;
          border-radius: 4px;
          background: #f8f8f8;
        }
      }
    }


    //.thing-item {
    //  min-width: 255px;
    //  max-width: 255px;
    //  position: relative;
    //  flex: 1;
    //  margin-right: 20px;
    //  height: fit-content;
    //  overflow: hidden;
    //  margin-top: 26px;
    //  margin-bottom: 36px;
    //  padding-bottom: 24px;
    //  border-bottom: 1px #e1e1e1 solid;
    //  cursor: pointer;
    //
    //  .img-view {
    //    //background: #f3f3f3;
    //    //text-align: center;
    //    height: 200px;
    //    width: 255px;
    //    //border: 1px #f3f3f3 solid;
    //
    //    img {
    //      height: 200px;
    //      width: 186px;
    //      overflow: hidden;
    //      margin: 0 auto;
    //      background-size: contain;
    //      object-fit: contain;
    //    }
    //  }
    //
    //  .info-view {
    //    //background: #f6f9fb;
    //    overflow: hidden;
    //    padding: 0 16px;
    //    .thing-name {
    //      line-height: 32px;
    //      margin-top: 12px;
    //      color: #0F1111!important;
    //      font-size: 19px;
    //      font-weight: 400!important;
    //      font-style: normal!important;
    //      text-transform: none!important;
    //      text-decoration: none!important;
    //    }
    //
    //    .price {
    //      color: #ff7b31;
    //      font-size: 20px;
    //      line-height: 20px;
    //      margin-top: 4px;
    //      overflow: hidden;
    //      text-overflow: ellipsis;
    //      white-space: nowrap;
    //    }
    //
    //    .translators {
    //      color: #6f6f6f;
    //      font-size: 12px;
    //      line-height: 14px;
    //      margin-top: 4px;
    //      overflow: hidden;
    //      text-overflow: ellipsis;
    //      white-space: nowrap;
    //    }
    //  }
    //}

  }
}

.flex-view {
  display: flex;
}

.thing-comment {
  .title {
    font-weight: 600;
    font-size: 14px;
    line-height: 22px;
    height: 22px;
    color: #152844;
    margin: 24px 0 12px;
  }

  .publish {
    -webkit-box-align: center;
    -ms-flex-align: center;
    align-items: center;

    .mine-img {
      -webkit-box-flex: 0;
      -ms-flex: 0 0 40px;
      flex: 0 0 40px;
      margin-right: 12px;
      border-radius: 50%;
      width: 40px;
      height: 40px;
    }

    .content-input {
      -webkit-box-flex: 1;
      -ms-flex: 1;
      flex: 1;
      background: #f6f9fb;
      border-radius: 4px;
      height: 32px;
      line-height: 32px;
      color: #484848;
      padding: 5px 12px;
      white-space: nowrap;
      outline: none;
      border: 0px;
    }

    .send-btn {
      margin-left: 10px;
      background: #4684e2;
      border-radius: 4px;
      -webkit-box-flex: 0;
      -ms-flex: 0 0 80px;
      flex: 0 0 80px;
      color: #fff;
      font-size: 14px;
      text-align: center;
      height: 32px;
      line-height: 32px;
      outline: none;
      border: 0px;
      cursor: pointer;
    }
  }

  .tab-view {
    -webkit-box-pack: justify;
    -ms-flex-pack: justify;
    justify-content: space-between;
    font-size: 14px;
    -webkit-box-align: center;
    -ms-flex-align: center;
    align-items: center;
    margin: 24px 0;

    .count-text {
      color: #484848;
      float: left;
    }

    .tab-box {
      color: #5f77a6;
      -webkit-box-align: center;
      -ms-flex-align: center;
      align-items: center;

      .tab-select {
        color: #152844;
      }

      span {
        cursor: pointer;
      }
    }

    .line {
      width: 1px;
      height: 12px;
      margin: 0 12px;
      background: #cedce4;
    }
  }
}


.comments-list {
  .comment-item {
    .flex-item {
      -webkit-box-align: center;
      -ms-flex-align: center;
      align-items: center;
      padding-top: 16px;

      .avator {
        -webkit-box-flex: 0;
        -ms-flex: 0 0 40px;
        flex: 0 0 40px;
        width: 40px;
        height: 40px;
        margin-right: 12px;
        border-radius: 50%;
        cursor: pointer;
      }

      .person {
        -webkit-box-flex: 1;
        -ms-flex: 1;
        flex: 1;
      }

      .name {
        color: #152844;
        font-weight: 600;
        font-size: 14px;
        line-height: 22px;
        height: 22px;
        cursor: pointer;
      }

      .time {
        color: #5f77a6;
        font-size: 12px;
        line-height: 16px;
        height: 16px;
        margin-top: 2px;
      }

      .float-right {
        color: #4684e2;
        font-size: 14px;
        float: right;

        span {
          margin-left: 19px;
          cursor: pointer;
        }

        .num {
          color: #152844;
          margin-left: 6px;
          cursor: auto;
        }
      }
    }
  }
}

.comment-content {
  margin-top: 8px;
  color: #484848;
  font-size: 14px;
  line-height: 22px;
  padding-bottom: 16px;
  border-bottom: 1px dashed #cedce4;
  margin-left: 52px;
  overflow: hidden;
  word-break: break-word;
}

.infinite-loading-container {
  clear: both;
  text-align: center;
}

.a-price-symbol {
  top: -0.5em;
  font-size: 12px;
}

.a-price {
  color: #f26d49;
  font-size: 21px;
}
</style>
