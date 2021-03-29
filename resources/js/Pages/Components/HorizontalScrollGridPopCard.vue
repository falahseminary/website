<template>
    <div class="min-w-176 h-144 m-12 bg-transparent">
        <div class="flex flex-nowrap w-full h-full overflow-y-visible
                    bg-gradient-to-r from-white via-yellow-50 to-green-50
                    rounded-lg shadow-md hover:shadow-xl transition-shadow duration-200 ease-in-out">
            <div class="w-1/3">
                <div class="bg-cover h-full w-full rounded-l-lg" :style="bg_url"></div>
            </div>
            <div class="w-2/3 p-12">
                <div class="text-3xl text-gray-800 font-bold">
                    <slot name="title-normal">
                        Build Your New
                    </slot>
                    <span class="text-indigo-600">
                        <slot name="title-highlighted">
                            Idea
                        </slot>
                    </span>
                </div>
                <div class="mt-4 text-gray-600">
                    <slot name="text">
                        Lorem, ipsum dolor sit amet consectetur adipisicing elit. Quidem modi reprehenderit vitae exercitationem aliquid dolores ullam temporibus enim expedita aperiam mollitia iure consectetur dicta tenetur, porro consequuntur saepe accusantium consequatur.
                    </slot>
                </div>
                <div class="mt-8">
                    <slot name="footer">
                        <a href="#" class="bg-gray-900 text-gray-100 px-5 py-3 font-semibold rounded">Start Now</a>
                    </slot>
                </div>
            </div>
        </div>
    </div>
</template>


<script>
    export default {
        components: {},
        data() {
            return {
                bg_url: "background-image:url('media/aboutus-bg.jpg')"
            }
        },
        methods: {},
    }
</script>