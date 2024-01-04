<template>
  <nav class="bg-gray-800 text-white p-4 shadow-md">
    <div class="container mx-auto flex items-center justify-between">
      <!-- 空白占位元素，用于对齐搜索框 -->
      <div class="flex-1"></div>
      <!-- 搜索框 -->
      <div class="flex-none px-2">
        <input type="text" placeholder="搜索..." class="search-input">
      </div>
      <!-- 导航项 -->
      <ul class="flex-1 flex justify-end items-center space-x-4">
        <li><a href="#首页" class="btn">首页</a></li>
        <li><a href="#民宿资讯" class="btn">民宿资讯</a></li>
        <li><a href="#民宿信息" class="btn">民宿信息</a></li>
        <li><a href="#投诉反馈" class="btn">投诉反馈</a></li>
        <!-- Dropdown for 个人中心 -->
        <li class="group relative inline-block">
          <a href="#" class="btn">个人中心</a>
          <ul class="absolute hidden group-hover:block bg-gray-700 p-2 mt-1 rounded">
            <li><a href="#基本信息" class="dropdown-item">基本信息</a></li>
            <li><a href="#我的收藏" class="dropdown-item">我的收藏</a></li>
            <li><a href="#我的订单" class="dropdown-item">我的订单</a></li>
          </ul>
        </li>
        <li><a href="#登录注册" class="btn">登录/注册</a></li>
      </ul>
    </div>
  </nav>
</template>

<script>
export default {
  name: "Navbar"
};
</script>

<style scoped>
.btn, .search-input {
  padding: 0.5rem 1rem;
  border-radius: 0.25rem;
  transition: background-color 0.3s, color 0.3s;
}
.btn {
  border: 1px solid white;
}
.btn:hover, .search-input:focus {
  background-color: white;
  color: black;
}
.dropdown-item {
  display: block;
  padding: 0.5rem 1rem;
  white-space: nowrap;
}
.dropdown-item:hover {
  background-color: #686868;
}
.search-input {
  outline: none;
  border: 1px solid white;
  background-color: transparent;
  color: white;
  width: 100%;
}
</style>
