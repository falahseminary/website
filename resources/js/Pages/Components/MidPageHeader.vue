<template>
    <div class="pl-32 pt-8 h-48 bg-top bg-no-repeat bg-cover bg-fixed" :style="bg_url">
        <div class="font-sans text-9xl text-white font-bold">
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
                'bg_url' : 'background-image: url("media/bg-2-lighter.svg");',
            }
        },
        methods: {},
    }
</script>
