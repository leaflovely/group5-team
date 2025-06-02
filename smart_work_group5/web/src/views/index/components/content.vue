<template>
  <div class="job-platform">
    <!-- 上部由其他组件控制，这里从主要内容开始 -->
    <div class="header-spacer"></div>
    <div class="main-content">
      <!-- 左侧筛选栏 -->
      <div class="filter-sidebar">
        <div class="filter-section">
          <h3 class="filter-title">
            <a-icon type="appstore" /> 岗位分类
          </h3>
          <a-tree
            :tree-data="contentData.cData"
            :selected-keys="contentData.selectedKeys"
            @select="onSelect"
            class="category-tree"
          />
        </div>

        <div class="filter-section">
          <h3 class="filter-title">
            <a-icon type="tags" /> 热门标签
          </h3>
          <div class="tag-container">
            <span
              v-for="item in contentData.tagData"
              :key="item.id"
              class="tag"
              :class="{ active: contentData.selectTagId === item.id }"
              @click="clickTag(item.id)"
            >
              {{ item.title }}
            </span>
          </div>
        </div>
      </div>

      <!-- 右侧职位内容 -->
      <div class="job-content">
        <div class="sort-options">
          <div class="sort-tabs">
            <span
              v-for="(tab, index) in contentData.tabData"
              :key="index"
              class="sort-tab"
              :class="{ active: contentData.selectTabIndex === index }"
              @click="selectTab(index)"
            >
              {{ tab }}
            </span>
          </div>
          <div class="results-count">
            共 {{ contentData.total }} 个职位
          </div>
        </div>

        <a-spin :spinning="contentData.loading">
          <div class="job-list">
            <div
              v-for="item in contentData.pageData"
              :key="item.id"
              class="job-card"
              @click="handleDetail(item)"
            >
              <div class="job-header">
                <div class="job-info">
                  <h3 class="job-title">{{ item.title }}</h3>
                </div>
                <div class="job-salary">{{ item.salary }}</div>
              </div>

              <div class="job-meta">
                <div class="meta-item">
                  <a-icon type="environment" />
                  <span>{{ item.location }}</span>
                </div>
                <div class="meta-item">
                  <a-icon type="solution" />
                  <span>{{ item.work_expe }}</span>
                </div>
                <div class="meta-item">
                  <a-icon type="read" />
                  <span>{{ item.education }}</span>
                </div>
              </div>
            </div>

            <div
              v-if="contentData.pageData.length <= 0 && !contentData.loading"
              class="empty-state"
            >
              <a-icon type="inbox" class="empty-icon" />
              <p>未找到匹配的职位</p>
              <p class="empty-hint">请尝试调整筛选条件</p>
            </div>
          </div>
        </a-spin>

        <div class="pagination-container">
          <a-pagination
            v-model="contentData.page"
            size="small"
            @change="changePage"
            :hideOnSinglePage="true"
            :defaultPageSize="contentData.pageSize"
            :total="contentData.total"
            :showSizeChanger="false"
          />
        </div>
      </div>
    </div>
  </div>
</template>

<script>
import { reactive, onMounted } from 'vue';
import { useRouter } from 'vue-router';
import { useUserStore } from '/@/store';
import { listApi as listClassificationList } from '/@/api/index/classification';
import { listApi as listTagList } from '/@/api/index/tag';
import { listApi as listThingList } from '/@/api/index/thing';
import { BASE_URL } from '/@/store/constants';

export default {
  setup() {
    const router = useRouter();
    const userStore = useUserStore();

    const contentData = reactive({
      selectX: 0,
      selectTagId: -1,
      cData: [{ key: '-1', title: '全部' }],
      selectedKeys: ['-1'],
      tagData: [],
      loading: false,
      tabData: ['最新', '最热', '推荐'],
      selectTabIndex: 0,
      tabUnderLeft: 12,
      thingData: [],
      pageData: [],
      page: 1,
      total: 0,
      pageSize: 15
    });

    // 初始化数据
    const initData = async () => {
      try {
        // 获取分类数据
        const classificationRes = await listClassificationList();
        classificationRes.data.forEach(item => {
          item.key = item.id;
          contentData.cData.push(item);
        });

        // 获取标签数据
        const tagRes = await listTagList();
        contentData.tagData = tagRes.data;

        // 获取职位数据
        await getThingList({});
      } catch (error) {
        console.error('初始化数据失败:', error);
      }
    };

    // 获取职位列表
    const getThingList = async (data) => {
      contentData.loading = true;
      try {
        const res = await listThingList(data);
        res.data.forEach(item => {
          if (item.cover) {
            item.cover = BASE_URL + item.cover;
          }
        });
        contentData.thingData = res.data;
        contentData.total = contentData.thingData.length;
        changePage(1);
      } catch (err) {
        console.error('获取职位列表失败:', err);
      } finally {
        contentData.loading = false;
      }
    };

    const onSelect = (selectedKeys) => {
      contentData.selectedKeys = selectedKeys;
      contentData.selectTagId = -1;
      const data = { c: getSelectedKey() };
      if (contentData.selectTabIndex !== 0) {
        data.sort = getSortValue();
      }
      getThingList(data);
    };

    const getSelectedKey = () => {
      return contentData.selectedKeys.length > 0 ? contentData.selectedKeys[0] : -1;
    };

    const clickTag = (id) => {
      contentData.selectedKeys = [];
      contentData.selectTagId = id;
      const data = { tag: contentData.selectTagId };
      if (contentData.selectTabIndex !== 0) {
        data.sort = getSortValue();
      }
      getThingList(data);
    };

    const selectTab = (index) => {
      contentData.selectTabIndex = index;
      contentData.tabUnderLeft = 12 + 50 * index;
      const data = { sort: getSortValue() };
      if (contentData.selectTagId !== -1) {
        data.tag = contentData.selectTagId;
      } else {
        data.c = getSelectedKey();
      }
      getThingList(data);
    };

    const getSortValue = () => {
      return contentData.selectTabIndex === 0 
        ? 'recent' 
        : contentData.selectTabIndex === 1 
          ? 'hot' 
          : 'recommend';
    };

    const handleDetail = (item) => {
      const text = router.resolve({ name: 'detail', query: { id: item.id } });
      window.open(text.href, '_blank');
    };

    const changePage = (page) => {
      contentData.page = page;
      const start = (contentData.page - 1) * contentData.pageSize;
      contentData.pageData = contentData.thingData.slice(start, start + contentData.pageSize);
    };

    onMounted(() => {
      initData();
    });

    return {
      contentData,
      onSelect,
      clickTag,
      selectTab,
      handleDetail,
      changePage
    };
  }
};
</script>

<style scoped>
.job-platform {
  max-width: 1200px;
  margin: 20px auto;
  padding: 0 15px;
}
.header-spacer {
  height: 80px; /* 这个值可以根据您的header实际高度调整 */
}
.main-content {
  display: flex;
  gap: 24px;
}

.filter-sidebar {
  width: 250px;
  flex-shrink: 0;
  background: #ffffff;
  border-radius: 12px;
  padding: 20px;
  box-shadow: 0 4px 12px rgba(0, 0, 0, 0.05);
  height: fit-content;
}

.filter-section {
  margin-bottom: 24px;
  border-bottom: 1px solid #e9ecef;
  padding-bottom: 20px;
}

.filter-section:last-child {
  border-bottom: none;
  margin-bottom: 0;
  padding-bottom: 0;
}

.filter-title {
  font-size: 16px;
  font-weight: 600;
  margin-bottom: 16px;
  color: #212529;
  display: flex;
  align-items: center;
  gap: 8px;
}

.category-tree {
  min-height: 200px;
}

.tag-container {
  display: flex;
  flex-wrap: wrap;
  gap: 8px;
}

.tag {
  background: #f8f9fa;
  padding: 6px 12px;
  border-radius: 16px;
  font-size: 13px;
  cursor: pointer;
  transition: all 0.2s ease;
}

.tag:hover,
.tag.active {
  background: #4361ee;
  color: white;
}

.job-content {
  flex: 1;
  background: #ffffff;
  border-radius: 12px;
  padding: 24px;
  box-shadow: 0 4px 12px rgba(0, 0, 0, 0.05);
}

.sort-options {
  display: flex;
  justify-content: space-between;
  align-items: center;
  margin-bottom: 24px;
  padding-bottom: 16px;
  border-bottom: 1px solid #e9ecef;
}

.sort-tabs {
  display: flex;
  gap: 12px;
}

.sort-tab {
  padding: 6px 16px;
  border-radius: 16px;
  cursor: pointer;
  transition: all 0.2s ease;
  font-weight: 500;
  font-size: 14px;
  background: #f8f9fa;
}

.sort-tab.active {
  background: #4361ee;
  color: white;
}

.results-count {
  color: #6c757d;
  font-size: 14px;
}

.job-list {
  display: grid;
  grid-template-columns: repeat(auto-fill, minmax(300px, 1fr));
  gap: 20px;
}

.job-card {
  background: white;
  border-radius: 8px;
  padding: 20px;
  transition: all 0.2s ease;
  border: 1px solid #e9ecef;
  cursor: pointer;
}

.job-card:hover {
  transform: translateY(-3px);
  box-shadow: 0 6px 16px rgba(0, 0, 0, 0.08);
  border-color: #4361ee;
}

.job-header {
  display: flex;
  justify-content: space-between;
  align-items: flex-start;
  gap: 12px;
  margin-bottom: 12px;
}

.job-info {
  flex: 1;
}

.job-title {
  font-size: 16px;
  font-weight: 600;
  margin-bottom: 4px;
  color: #212529;
}

.job-salary {
  background: #2ec4b6;
  color: white;
  padding: 4px 12px;
  border-radius: 16px;
  font-weight: 600;
  font-size: 14px;
  white-space: nowrap;
}

.job-meta {
  display: flex;
  flex-wrap: wrap;
  gap: 12px;
  font-size: 13px;
  color: #495057;
}

.meta-item {
  display: flex;
  align-items: center;
  gap: 4px;
}

.empty-state {
  grid-column: 1 / -1;
  text-align: center;
  padding: 40px 0;
  color: #6c757d;
}

.empty-icon {
  font-size: 40px;
  margin-bottom: 16px;
  color: #adb5bd;
}

.empty-hint {
  color: #adb5bd;
  font-size: 13px;
  margin-top: 4px;
}

.pagination-container {
  display: flex;
  justify-content: center;
  margin-top: 32px;
  padding-top: 24px;
  border-top: 1px solid #e9ecef;
}

@media (max-width: 992px) {
  .main-content {
    flex-direction: column;
  }
  
  .filter-sidebar {
    width: 100%;
  }
}

@media (max-width: 768px) {
  .job-list {
    grid-template-columns: 1fr;
  }
}
</style>