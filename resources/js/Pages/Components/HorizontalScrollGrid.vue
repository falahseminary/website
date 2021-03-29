<template>
    <div class="flex overflow-x-scroll overflow-y-hidden hide-scrollbar">
        <div class="flex flex-nowrap">

            <slot name="grid">
                <div class="w-1/2-screen bg-transparent h-1/4-screen overflow-hidden">
                    <div class="m-6 p-8 bg-gray-200 h-full">
                        0 Lorem ipsum
                    </div>
                </div>
                <div class="w-1/2-screen bg-transparent h-1/4-screen overflow-hidden">
                    <div class="m-6 p-8 bg-gray-400 h-full">
                        1 Lorem ipsum
                    </div>
                </div>
                <div class="w-1/2-screen bg-transparent h-1/4-screen overflow-hidden">
                    <div class="m-6 p-8 bg-gray-200 h-full">
                        2 Lorem ipsum
                    </div>
                </div>
            </slot>

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