<template>

    <div>
        <h1>Dit wordt een pagina over Deliveries</h1>
        <delivery-form></delivery-form>
        <delivery-lijst></delivery-lijst>
    </div>
</template>

<script>
import deliveryForm from './deliveryForm.vue';
import DeliveryLijst from './deliveryLijst.vue';

export default {
  components: { deliveryForm, DeliveryLijst },

};
</script>
<style scoped>

</style>