<template>
  <div id="app">
    <div v-if="showSearch">
      <input
        type="text"
        v-model="searchQuery"
        @input="filterData"
        placeholder="Search..."
      />
    </div>
    <ul>
      <li v-for="(item, index) in filteredData" :key="index">
        {{ item.name }} - {{ item.description }}
      </li>
    </ul>
  </div>
</template>

<script>
const jsonData = [];

fetch('/PylarSearch.json')
  .then((response) => response.json())
  .then((data) => {
    jsonData.push(...data);
  });

export default {
  data() {
    return {
      showSearch: false,
      searchQuery: "",
      originalData: jsonData,
      filteredData: jsonData,
    };
  },
  methods: {
    filterData() {
      this.filteredData = this.originalData.filter((item) =>
        item.name.toLowerCase().includes(this.searchQuery.toLowerCase())
      );
    },
    handleKeyPress(event) {
      const key = event.key.toLowerCase();
      const isMac = navigator.platform.toUpperCase().indexOf("MAC") >= 0;
      const cmdOrCtrl = isMac ? event.metaKey : event.ctrlKey;

      if (cmdOrCtrl && key === "k") {
        event.preventDefault();
        this.showSearch = !this.showSearch;
      }
    },
  },
  mounted() {
    document.addEventListener("keydown", this.handleKeyPress);
  },
  beforeDestroy() {
    document.removeEventListener("keydown", this.handleKeyPress);
  },
};
</script>
