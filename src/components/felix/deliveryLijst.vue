<template>

    <div>
        dit is delijst
        <delivery-item
            v-for="item in deliveryLijst"
            :delivery="item"
            :key="item.id"
        ></delivery-item>
    </div>
</template>

<script>
import deliveryItem from "./deliveryItem.vue";
export default {
    components: { deliveryItem },
    data(){
        return {
            deliveryLijst:[],
        }
    },
    created(){
        this.geefAlleDeliveries();
    },
    methods:{
        async geefAlleDeliveries(){
            const antwoord = await fetch("http://localhost:5000/getalldeliveriessdb");
            this.deliveryLijst = await antwoord.json();
            console.log(this.deliveryLijst);
        }
    }
};
</script>
<style scoped>

</style>