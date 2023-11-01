<template>
  <div class="todo__form">
    <label>
     {{ msg }}
      <input v-model="yoyo.nameTemp" name="todoInput" type="text" />
      <input v-model="yoyo.contactPerson" name="todoInput" type="text" />
       <input v-model="yoyo.address" name="todoInput" type="text" />
        <input v-model="yoyo.email" name="todoInput" type="text" />
          <input v-model="yoyo.phoneNumber" name="todoInput" type="text" />
           <!-- <input v-model="yoyo.zippCode" name="todoInput" type="text" /> -->
    </label>
    
    <button @click="myFunction()">Add</button>
  </div>
</template>
<script>
export default {
  data() {
    return {
      yoyo: Object,
    };
  },
     props: {
        msg: "",
    },
  created() {
    console.log("Ik word gemaakt");
    this.yoyo.nameTemp = "";
    console.log(this.yoyo);
  },
  methods: {
    myFunction() {
      //    this.yoyo="ander woord"
      console.log(this.yoyo.nameTemp);
      this.addItem();
    },

    async addItem() {
      // console.log(this.yoyo.name);
      await fetch("http://localhost:5000/suppliertoevoegen", {
        method: "POST",
        headers: {
          "content-type": "application/json",
        },
        body: JSON.stringify({
          name : this.yoyo.nameTemp,
          contactperson: this.yoyo.contactPerson,
          address: this.yoyo.address,
          email: this.yoyo.email,
          phonenumber: this.yoyo.phoneNumber,
          // zippcode: this.zippCode,
          delivery: 0
        }),
      });
    },
  },
};
</script>
<style scoped>
.todo__form {
  display: flex;
  gap: 1rem;
  width: max-content;
  margin: 0 auto;
}
input {
  margin-left: 0.5rem;
}
</style>
