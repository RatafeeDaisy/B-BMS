<template>
  <div>
    <Navbar />
    <section class="p-4 bg-gray-100">
      <h2 class="text-2xl font-bold mb-4 text-center">民宿推荐</h2>
      <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-4">
        <div v-for="n in 9" :key="n" class="bg-white p-4 rounded-lg shadow-md hover:shadow-lg transition-all">
          <div class="h-48 bg-gray-200 rounded-md mb-3">
            <!-- 民宿图片占位 -->
          </div>
          <h3 class="text-lg font-semibold mb-1">民宿名称 #{{ n }}</h3>
          <p class="text-gray-600">这里是民宿的简短介绍。</p>
        </div>
      </div>
    </section>
  </div>
</template>

<script>
import Navbar from '@/components/Navbar.vue';

export default {
  name: "Home",
  components: {
    Navbar
  }
};
</script>

<style scoped>
.section {
  transition: all 0.3s ease-in-out;
}
.card:hover {
  transform: translateY(-5px);
}
</style>
