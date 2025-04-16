<template>

    <div v-if="$renderContext === 'presenter'" class="absolute -top-1px left-0 w-full h-auto z-50">
        <vue-countdown v-if="$page === $slidev.nav.currentPage" auto-start @progress="handleProgress"
            :time="timeRemaining" v-slot="{ minutes, seconds }" class="flex items-center justify-stretch" tag='div'>
            <div class="ml-1 bg-gray-200 w-full overflow-hidden rounded-full h-4 dark:bg-gray-500 relative">
                <div class="bg-blue-600 w-full h-full rounded-full"
                    :class="{ 'bg-gray-500 animate-pulse': progressPercentage >= 100, 'bg-red-500 animate-pulse': progressPercentage > 75 && progressPercentage < 100, 'bg-yellow-500': progressPercentage > 50 && progressPercentage <= 75, 'bg-green-500': progressPercentage <= 50 }"
                    :style="{ width: progressPercentage + '%' }">
                </div>
            </div>
            <div class="text-sm ml-2 whitespace-nowrap text-black dark:text-white text-right">
                {{ progressString }}
                <button @click="restartCountdown" class=" text-md rounded-md hover:text-blue-500 relative">
                    <solar-restart-broken />
                </button>
            </div>
        </vue-countdown>
        <!-- <div class="bg-gray-200 overflow-hidden rounded-full h-4 dark:bg-gray-500 relative">
            <div class="bg-blue-600 h-full rounded-full"
                :class="{ 'bg-gray-500': progressPercentage >= 100, 'bg-red-500 animate-pulse': progressPercentage > 75 && progressPercentage < 100, 'bg-yellow-500': progressPercentage > 50 && progressPercentage <= 75, 'bg-green-500': progressPercentage <= 50 }"
                :style="{ width: progressPercentage + '%' }">
            </div>
        </div> -->
    </div>
</template>

<script setup lang="ts">
import VueCountdown from '@chenfengyuan/vue-countdown';
import { ref } from 'vue'

const props = defineProps({
    minutes: Number,
    seconds: Number
})

const minutes = props.minutes as number
const seconds = props.seconds as number

const targetSeconds = (minutes * 60) + seconds

if (targetSeconds >= 3600) {
    throw new Error("Timer must be less than 1 hour")
}

// console.log("minutes", props.minutes)
// console.log("seconds", props.seconds)

const progressPercentage = ref(0);
const timeRemaining = ref(targetSeconds * 1000);
const progressString = ref('')

function handleProgress(data) {
    const percentComplete = ((targetSeconds - data.totalSeconds) / targetSeconds * 100)
    // console.log("progressPercentage", percentComplete);
    progressPercentage.value = percentComplete
    // console.log(data.totalSeconds)
    timeRemaining.value = data.totalMilliseconds
    progressString.value = data.minutes || data.seconds ? `${data.minutes}:${data.seconds}` : `Time is Up!`

}

function restartCountdown() {
    timeRemaining.value = targetSeconds * 1000
    progressPercentage.value = 0
}

</script>