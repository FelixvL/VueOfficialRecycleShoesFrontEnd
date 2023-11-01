<template>

<div>

    <div>
        <supplier-form msg="Leverancier toevoegen"></supplier-form>
        <supplier-list></supplier-list>
    </div>
    </div>

</template>

<script>


import supplierForm from "../supplierForm.vue";
import supplierList from "../supplierList.vue";

export default {
    components: { 
        supplierForm,
        supplierList,
    },

};
</script>
<style scoped>

</style>