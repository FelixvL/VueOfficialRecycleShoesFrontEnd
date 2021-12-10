<template>
  <div class="todo__form">
    <label>
      Company Name
      <input v-model="yoyo.companyName" name="todoInput" type="text" />
      <input v-model="yoyo.contactPerson" name="todoInput" type="text" />
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
  created() {
    console.log("Ik word gemaakt");
    this.yoyo.companyName = "";
    console.log(this.yoyo);
  },
  methods: {
    myFunction() {
      //    this.yoyo="ander woord"
      console.log(this.yoyo.companyName);
      console.log(this.yoyo.contactPerson);
      console.log(this.yoyo);
      this.addItem();
    },

    async addItem() {
      await fetch("http://localhost:5000/suppliertoevoegen", {
        method: "POST",
        headers: {
          "content-type": "application/json",
        },
        body: {
          name: "joost",
          email: "joost",
          address: "joost",
          zipcode: "joost",
          place: "joost",
          contactperson: "joost",
          phonenumber: "joost",
          delivery: "0",
        },
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
