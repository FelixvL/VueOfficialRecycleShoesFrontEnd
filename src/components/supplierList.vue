<template>

<div>
    <h1> recycle-shoes app</h1>
  <table>
  <tr>
    <th>Company</th>
    <th>Contact</th>
    <th>Adress</th>
    <th>Zipcode</th>
    <th>Place</th>
    <th>Phonenumber</th>
  </tr>
  
      <supplier-item
      v-for="item in list"
          :item="item"
          :key="item.id">
      </supplier-item>
      </table>
</div>

</template>


<script>
import supplierItem from "./supplierItem.vue";

export default {
    components: {
        supplierItem,
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
            const resp = await fetch("http://localhost:5000/getallsuppliersdb")
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