<template>

<div>

   <h1> recycle-shoes app</h1>

    <div>
        <supplier-form></supplier-form>
        <supplier-list></supplier-list>
    </div>
    <div>
          <delivery-form></delivery-form>
          <delivery-list></delivery-list>
    </div>  
    </div>

</template>

<script>


import supplierForm from "../supplierForm.vue";
import supplierList from "../supplierList.vue";
import deliveryForm from "./deliveryForm.vue";
import deliveryList from "./deliveryList.vue";
export default {
    components: { 
        supplierForm,
        supplierList,
        deliveryForm,
        deliveryList,
    },

};
</script>
<style scoped>

</style>