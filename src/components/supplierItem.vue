<template>
  <tr>
    <td>{{ item.name }}</td>
    <td>{{ item.contactperson }}</td>
    <td>{{ item.address }}</td>
    <td>{{ item.zipcode }}</td>
    <td>{{ item.place }}</td>
    <td>{{ item.phonenumber }}</td>
  </tr>


</template>

<script>

export default {
    props: {
        item: Object,
    },
};
</script>
<style scoped>
table {
  font-family: arial, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

td, th {
  border: 1px solid #dddddd;
  text-align: left;
  padding: 8px;
}

tr:nth-child(even) {
  background-color: #dddddd;
}
</style>