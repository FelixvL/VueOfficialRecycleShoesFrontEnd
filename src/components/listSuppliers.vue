<template>

<div>
    <h1> recycle-shoes app</h1>
<div>
    {{ count }}
</div>
<!-- <div
      v-for="item in list">
      {{ item.contactperson }}
      {{ item.name}}
    
    </div> -->
      <item-supplier
      v-for="item in list"
          :item="item">
      </item-supplier>
</div>

</template>


<script>
import itemSupplier from "./itemSupplier.vue";

export default {
    components: {
        itemSupplier,
    },
    props: {
        msg: String,
    },
    data() {
        return {
            // count: 0,
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