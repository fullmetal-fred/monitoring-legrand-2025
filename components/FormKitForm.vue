<script setup>
import { ref, ssrContextKey } from 'vue'
import { useFormKitContext } from '@formkit/vue'

const form = useFormKitContext()

const props = defineProps({
    url: String,
    topic: String
})

console.log(form)

const submitted = ref(false)

const submit = async (value) => {
    // Let's pretend this is an ajax request:

    let url = props.url;
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
    let response = await fetch(url, options);
    let responseOK = response && response.ok;
    if (responseOK) {
        let data = await response.json();
        submitted.value = true
        console.log(data)
        // do something with data
    } else {
        submitted.value = false
    }

}
</script>

<template>
    <!--See more here https://formkit.com/inputs/form#provided-submit-button#provided-submit-button-->
    <FormKit type="form" :id="form - { topic }" :form-class="submitted ? 'submitted' : ''" submit-label="Submit"
        @submit="submit" :actions="true" #default="{ value }">
        <slot />
    </FormKit>
</template>