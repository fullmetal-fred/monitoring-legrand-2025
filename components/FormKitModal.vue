<script setup>
import { ref } from 'vue'
import {
    Dialog,
    DialogPanel,
    DialogTitle,
    DialogDescription,
} from '@headlessui/vue'

// The open/closed state lives outside of the Dialog and
// is managed by you.
const isOpen = ref(false)
const buttonLabel = ref('Start')
const grade = ref(null)

function setIsOpen(value) {
    isOpen.value = value
}

const props = defineProps({
    baseUrl: String,
    path: String,
    topic: String,
    title: String,
    description: String
})

const submitted = ref(false)

const submit = async (value) => {
    let url = props.baseUrl + props.path;
    let options = {
        method: 'POST',
        mode: 'cors',
        headers: {
            'Accept': 'application/json',
            'Content-Type': 'application/json;charset=UTF-8'
        },
        body: JSON.stringify(
            { "topic": props.topic, "payload": value }
        )
    };
    console.log('sending form data to', url)
    let response = await fetch(url, options);
    let responseOK = response && response.ok;
    if (responseOK) {
        setIsOpen(false)
        let data = await response.json();
        submitted.value = true
        buttonLabel.value = 'Done'
        console.log(data)
        grade.value = data
    } else {
        setIsOpen(false)
        submitted.value = false
    }
}
</script>

<!--ALLOW SCROLLING INSIDE FORM MODALS-->

<template>
    <button class="modal-control" :class="{ submitted: submitted }" @click="setIsOpen(true)"> {{ buttonLabel
        }}</button>
        <h3> {{ grade }} </h3>
    <Dialog :open="isOpen" @close="setIsOpen" class="relative z-50">
        <!-- The backdrop, rendered as a fixed sibling to the panel container -->
        <div class="fixed inset-0 modal-backdrop" aria-hidden="true" />
        <!-- Full-screen scrollable container -->
        <div class="fixed inset-0 w-screen ">
            <!-- Container to center the panel -->
            <div class="flex min-h-full items-center justify-center p-4">
                <!--Set width of dialogue panel here-->
                <DialogPanel class="modal flex flex-col w-150 max-h-200 ">
                    <div class="flex justify-between">
                        <DialogTitle class="self-start">{{ title }}</DialogTitle>
                        <button class="formkit-input self-end" @click="setIsOpen(false)">
                            <carbon:close-outline class="hover:text-red-500"></carbon:close-outline>
                        </button>
                    </div>
                    <DialogDescription>
                        {{ description }}
                    </DialogDescription>
                    <div class="my-scrollbar overflow-y-auto mb-5">
                        <!--See more here https://formkit.com/inputs/form#provided-submit-button#provided-submit-button-->
                        <FormKit type="form" :id="form - { topic }" :form-class="submitted ? 'submitted' : ''"
                            submit-label="Submit" @submit="submit" :actions="true" #default="{ value }">
                            <slot />
                        </FormKit>
                    </div>
                </DialogPanel>
            </div>
        </div>
    </Dialog>
</template>



<!-- <template>
    <button class="modal-control" :class="{ submitted: submitted }" @click="setIsOpen(true)"> {{ buttonLabel
        }}</button>
    <Dialog :open="isOpen" @close="setIsOpen" class="relative z-50">

        <div class="modal-backdrop w-screen overflow-y-auto" aria-hidden="true" />

        <div class="fixed inset-0 w-screen overflow-y-auto">
            <div class="flex min-h-full items-center justify-center p-4">
                <DialogPanel class="modal flex flex-col">
                    <button class="formkit-input self-end" @click="setIsOpen(false)">
                        <carbon:close-outline class="hover:text-red-500"></carbon:close-outline>
                    </button>
                    <DialogTitle>{{ title }}</DialogTitle>
                    <DialogDescription>
                        {{ description }}
                    </DialogDescription>
                    <FormKit type="form" :id="form - { topic }" :form-class="submitted ? 'submitted' : ''"
                        submit-label="Submit" @submit="submit" :actions="true" #default="{ value }">
                        <slot />
                    </FormKit>
                </DialogPanel>
            </div>
        </div>
    </Dialog>
</template> -->
