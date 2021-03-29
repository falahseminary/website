<template>
    <div class="pl-36 pt-8 h-64 bg-top bg-no-repeat bg-cover bg-fixed" :style="bg_url">
        <div class="font-sans text-5xl text-gray-800 font-bold">
            <slot name="title">
                Fake Title
            </slot>
        </div>
    </div>
</template>


<script>
    export default {
        components: {},
        data() {
            return {
                'bg_url' : 'background-image: url("media/bg-2-lighter.svg");'
            }
        },
        methods: {},
    }
</script>
