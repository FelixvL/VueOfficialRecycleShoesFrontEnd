<template>
  <tr>
    <td>{{ item.product }}</td>
    <td>{{ item.datedelivery }}</td>
    <td>{{ item.administrator }}</td>
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