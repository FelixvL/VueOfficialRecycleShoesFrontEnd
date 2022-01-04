<template>

    <div>
       dit is het item,<br>
       <br>
       - {{delivery.product}}
       <hr>
    </div>
</template>

<script>

export default {
    props:{
        delivery:Object,
    }
};
</script>
<style scoped>

</style>