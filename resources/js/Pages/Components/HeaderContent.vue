<template>
    <div class="IGNORE.pt-32 md:pt-64 md:pl-32 pt-40 pl-8 h-screen bg-top bg-no-repeat bg-cover bg-fixed" :style="bg_url">
        <div class="font-serif text-5xl text-gray-100 text-center -mt-4 md:-mt-16">
            <slot name="supertext">
                Fake Supertext
            </slot>
        </div>
        <div class="font-sans text-7xl text-gray-900 pt-32 font-bold">
            <slot name="title">
                Fake Title
            </slot>
        </div>
        <div class="font-serif text-5xl text-gray-700 pt-6">
            <slot name="subtitle">
                Fake Subtitle
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
