<template>

    <label>
        DeliveryToevoegen<br>
         {{ msg }}
        <input v-model="mijndelivery.product" type="text">
         <input v-model="mijndelivery.datedelivery" type="date">
          <input v-model="mijndelivery.administrator" type="text">
    </label>
    <button @click="voegDeleveryToe()">Voeg toe</button>
</template>

<script>

export default {
    data() {
        return{
            mijndelivery: Object,
        };
    },
        props: {
        msg: "",
    },
    methods:{
        voegDeleveryToe() {
            console.log("delivery toevoegen werkt");
            console.log(this.mijndelivery.product);
            this.postNaarBackend();
        },
        async postNaarBackend() {
            await fetch("http://localhost:5000/deliverytoevoegen",{
                method:"POST",
                headers:{
                    "content-type":"application/json",
                },
                body: JSON.stringify({
                    product : this.mijndelivery.product,
                    datedelivery : '2023-10-10',
                    administrator : 'Jacob'
                }),
            });
        }
    }

};
</script>
<style scoped>

</style>