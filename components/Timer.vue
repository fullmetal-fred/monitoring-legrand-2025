<template>
    <div v-if="$page === $slidev.nav.currentPage">
        <div class="bg-gray-200 min-w-50vh overflow-hidden rounded-full h-4 dark:bg-gray-500">
            <div class="bg-blue-600 h-full rounded-full border-2 border-gray-200 dark:border-gray-500"
                :class="{ 'bg-green-500 animate-pulse': progressPercentage >= 100, 'bg-blue-700': progressPercentage < 100 }"
                :style="{ width: progressPercentage + '%' }">
            </div>
        </div>
        <vue-countdown v-if="wallTime || counting" @progress="handleProgress" :time="timeRemaining"
            v-slot="{ minutes, seconds }" tag="div"> </vue-countdown>
        <div class=" text-right flex justify-right">
            <h4 class="basis-3/4 text-left">{{ title }}</h4>
            <h6 class="" v-if="progressString">{{ progressString }}</h6>
            <h6 class="w-20 h-4 m-1 bg-gray-200 dark:bg-gray-500 rounded-xl animate-pulse" v-if="!progressString">
            </h6>
            <button v-if='!wallTime' @click="restartCountdown" title="Restart Timer"
                class="h-6 rounded-md hover:text-blue-500 relative">
                <solar-restart-broken class="contents-cover" />
            </button>
            <button v-if='!wallTime' @click="startCountdown" title="Start Timer"
                class="h-6 rounded-md hover:text-blue-500 relative">
                <solar-alt-arrow-right-bold class="contents-cover" />
            </button>
        </div>





    </div>
</template>

<script setup lang="ts">
import VueCountdown from '@chenfengyuan/vue-countdown';
import { ref } from 'vue'

const props = defineProps({
    title: {
        type: String,
        default: ''
    },
    minutes: {
        type: Number,
        default: 0
    },
    hours: {
        type: Number,
        default: 0
    },
    seconds: {
        type: Number,
        default: 0
    },
    wallTime: {
        type: Boolean,
        default: false
    },
    autoStart: {
        type: Boolean,
        default: false
    }
})



const counting = ref(props.autoStart)

const title = ref(props.title)

const hours = Number(props.hours)
const minutes = Number(props.minutes)
const seconds = Number(props.seconds)

const targetSeconds = ref(0)

if (props.wallTime) {
    const now = new Date
    const later = new Date
    later.setHours(hours)
    later.setMinutes(minutes)
    later.setSeconds(seconds)

    targetSeconds.value = (later.getTime() - now.getTime()) / 1000

} else {
    targetSeconds.value = (hours * 3600) + (minutes * 60) + seconds
    if (targetSeconds.value >= 14400) {
        throw new Error("Countdown timer must be less than 4 hours")
    }
}

const progressPercentage = ref(0);
const timeRemaining = ref(targetSeconds.value * 1000);
const progressString = ref('')


if (targetSeconds.value <= 0) {
    progressPercentage.value = 100
    timeRemaining.value = 0
    progressString.value = 'Time\'s Up!'

}


function handleProgress(data) {
    if (targetSeconds.value <= 0) {
        progressPercentage.value = 100
    } else {
        progressPercentage.value = ((targetSeconds.value - data.totalSeconds) / targetSeconds.value * 100)
    }
    timeRemaining.value = data.totalMilliseconds
    progressString.value = `${data.hours.toString().padStart(2, '0')}:${data.minutes.toString().padStart(2, '0')}:${data.seconds.toString().padStart(2, '0')}`
    if (data.totalSeconds <= 0) {
        progressString.value = `Time is Up!`
    }
}

function startCountdown() {
    counting.value = true
}

function restartCountdown() {
    timeRemaining.value = targetSeconds.value * 1000
    progressPercentage.value = 0
}








</script>