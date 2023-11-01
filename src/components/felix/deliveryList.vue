<template>

<div>
    <!-- <h1> recycle-shoes app</h1> -->
  <table>
  <tr>
    <th>product</th>
    <th>datedelivery</th>
    <th>administrator</th>
  </tr>
  
     <delivery-item
      v-for="item in list"
          :item="item"
          :key="item.id">
      </delivery-item>
      </table>

</div>

</template>


<script>
import deliveryItem from "./deliveryItem.vue";

export default {
    components: {
        deliveryItem,
    },
    props: {
        msg: String,
    },
    data() {
        return {
            list: [],
        };
    },
    created() {
        console.log('component is geladen');
        // this.list.push("go");
        this.getAllSuppliers();
    },
    methods: {
        async getAllSuppliers() {
            const resp = await fetch("http://localhost:5000/getalldeliveriessdb")
            this.list = await resp.json();
        },
    },

};
</script>
<style scoped>
h1 {
    font-weight: bold;
    color:green;
}
</style>