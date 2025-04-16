<script setup lang="ts">
import { computed } from 'vue'
import { handleBackground } from '../layoutHelper'

const props = defineProps({
    items: {
        default: 'center',
    },
    justify: {
        default: 'center',
    },
    class: {
        default: '',
    },
})

const alignment = computed(() => 'items-' + props.items)
const justification = computed(() => 'justify-' + props.justify)
const extraClasses = computed(() => props.class)

</script>

<template>
    <div class="slidev-layout flex-header w-full h-full grid grid-rows-7">
        <div class="row-span-1">
            <slot />
        </div>
        <div
            :class="'row-span-5 flex truncate flex-col flex-wrap ' + justification + ' ' + alignment + ' ' + extraClasses">
            <slot name="body" />
        </div>
    </div>
</template>