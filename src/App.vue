<script setup>
// This starter template is using Vue 3 <script setup> SFCs
// Check out https://v3.vuejs.org/api/sfc-script-setup.html#sfc-script-setup
import supplierList from './components/supplierList.vue'
import supplierForm from './components/supplierForm.vue'
import FfProberen from './components/felix/FfProberen.vue'
</script>

<template>
  <!-- <img alt="Vue logo" src="./assets/logo.png" /> -->
  <div>
<!--
    <supplierForm msg="Hello Vue 3 + Vite" />
    <supplierList msg="Hello Vue 3 + Vite" />
-->
    <FfProberen/>
  </div>
</template>

<style>
#app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
  margin-top: 60px;
}
</style>
