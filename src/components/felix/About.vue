<template>

<div>


    <div>
          <delivery-form msg="Product toevoegen"></delivery-form>
          <delivery-list></delivery-list>
    </div>  
    </div>

</template>

<script>


import deliveryForm from "./deliveryForm.vue";
import deliveryList from "./deliveryList.vue";
export default {
    components: { 
        deliveryForm,
        deliveryList,
    },

};
</script>
<style scoped>

</style>