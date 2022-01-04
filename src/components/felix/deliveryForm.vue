<template>

    <div>
        <label>
            DeliveryToevoegen<br>
            <input v-model="mijndelivery.product" type="text">
        </label>
        <button @click="voegDeliveryToe()">Voeg Toe</button>
    </div>
</template>

<script>

export default {
    data(){
        return{
            mijndelivery: Object,
        };
    },
    methods:{
        voegDeliveryToe(){
            console.log("delivery toevoegen werkt");
            console.log(this.mijndelivery.product);
            this.postNaarBackend();
        },
        async postNaarBackend(){
            await fetch("http://localhost:5000/deliverytoevoegen",{
                method:"POST",
                headers:{
                    "content-type":"application/json",
                },
                body: JSON.stringify({
                    product : this.mijndelivery.product,
                    datedelivery :'2022-01-04T23:00:00.000Z',
                    administrator :'hans'
                }),
            });
        }
    }
};
</script>
<style scoped>

</style>