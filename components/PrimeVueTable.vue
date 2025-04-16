<template>
    <div class="card">
        <DataTable ref="dt" :value="products" tableStyle="min-width: 50rem">
            <template #header>
                <div style="text-align: left">
                    <button label="Export" @click="exportCSV($event)">Download CSV</button>
                </div>
            </template>
            <Column v-for="col of columns" :key="col.field" :field="col.field" :header="col.header"></Column>
        </DataTable>
    </div>
</template>

<script setup>

import DataTable from 'primevue/datatable';
import Column from 'primevue/column';
import ColumnGroup from 'primevue/columngroup';   // optional
import Row from 'primevue/row';                   // optional
import { ref, onMounted } from 'vue';

const dt = ref();
const products = ref();
const columns = [
    { field: 'code', header: 'Code' },
    { field: 'name', header: 'Name' },
    { field: 'category', header: 'Category' },
    { field: 'quantity', header: 'Quantity' }
];

const exportCSV = () => {
    console.log(dt)
    dt.value.exportCSV();
};

onMounted(() => {
    products.value = [
        { code: 'A1', name: 'Apple', category: 'Fruit', quantity: 5 },
        { code: 'B2', name: 'Banana', category: 'Fruit', quantity: 10 },
        { code: 'C3', name: 'Carrot', category: 'Vegetable', quantity: 15 },
        { code: 'D4', name: 'Durian', category: 'Fruit', quantity: 20 },
        { code: 'E5', name: 'Eggplant', category: 'Vegetable', quantity: 25 }
    ];

});

</script>

<style></style>