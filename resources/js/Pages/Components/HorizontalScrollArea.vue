<template>
    <!-- partially pasted from: https://tailwindcomponents.com/component/horizontal-scroll-card-components -->
    <div class="flex flex-col bg-white m-auto p-auto">
        <h1 class="flex py-5 px-10 mx-20 font-bold text-4xl text-gray-800">
            <slot name="title">Horizontal Scroll Area Title here...</slot>
        </h1>
        <div class="flex overflow-x-scroll pb-10 hide-scroll-bar">
            <div class="flex flex-nowrap justify-center lg:w-full">
                <slot name="area">
                    <div class="inline-block px-3">
                        <div class="w-64 h-64 max-w-xs overflow-hidden rounded-lg shadow-md bg-white hover:shadow-xl transition-shadow duration-300 ease-in-out">
                        </div>
                    </div>
                    <div class="inline-block px-3">
                        <div class="w-64 h-64 max-w-xs overflow-hidden rounded-lg shadow-md bg-white hover:shadow-xl transition-shadow duration-300 ease-in-out">
                        </div>
                    </div>
                    <div class="inline-block px-3">
                        <div class="w-64 h-64 max-w-xs overflow-hidden rounded-lg shadow-md bg-white hover:shadow-xl transition-shadow duration-300 ease-in-out">
                        </div>
                    </div>
                </slot>
            </div>
        </div>
    </div>
</template>


<script>
    export default {
        components: {},
        data() { return {} },
        methods: {},
    }
</script>