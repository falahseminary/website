<template>
    <div>
        <!-- partially pasted from: https://tailwindcomponents.com/component/paragraph-with-image -->
        
        <div class="inline-block px-5">
            <div class="w-96 lg:w-128 lg:flex overflow-hidden rounded-lg shadow-md bg-white hover:shadow-xl transition-shadow duration-300 ease-in-out">
                <div class="lg:w-1/2">
                    <div class="bg-cover lg:h-full lg:w-full h-64" :style="bg_url"></div>
                </div>
                <div class="max-w-5xl h-96 lg:w-1/2">
                    <h2 class="text-3xl text-gray-800 font-bold">
                        <slot name="title-normal">
                            Build Your New
                        </slot>
                        <span class="text-indigo-600">
                            <slot name="title-highlighted">
                                Idea
                            </slot>
                        </span>
                    </h2>
                    <p class="mt-4 text-gray-600">
                        <slot name="text">
                            Lorem, ipsum dolor sit amet consectetur adipisicing elit. Quidem modi reprehenderit vitae exercitationem aliquid dolores ullam temporibus enim expedita aperiam mollitia iure consectetur dicta tenetur, porro consequuntur saepe accusantium consequatur.
                        </slot>
                    </p>
                    <div class="mt-8">
                        <slot name="footer">
                            <a href="#" class="bg-gray-900 text-gray-100 px-5 py-3 font-semibold rounded">Start Now</a>
                        </slot>
                    </div>
                </div>
            </div>
        </div>
        <!--<div class="inline-block px-6">
            <div class="bg-white overflow-hidden rounded-lg shadow-md hover:shadow-xl transition-shadow duration-300 ease-in-out">
                <div class="">
                    <div class="h-64 bg-cover" :style="bg_url"></div>
                </div>
                <div class="py-12 px-6 max-w-5xl max-h-2xl">
                    <h2 class="text-3xl text-gray-800 font-bold">
                        <slot name="title-normal">
                            Build Your New
                        </slot>
                        <span class="text-indigo-600">
                            <slot name="title-highlighted">
                                Idea
                            </slot>
                        </span>
                    </h2>
                    <p class="mt-4 text-gray-600">
                        <slot name="text">
                            Lorem, ipsum dolor sit amet consectetur adipisicing elit. Quidem modi reprehenderit vitae exercitationem aliquid dolores ullam temporibus enim expedita aperiam mollitia iure consectetur dicta tenetur, porro consequuntur saepe accusantium consequatur.
                        </slot>
                    </p>
                    <div class="mt-8">
                        <slot name="footer">
                            <a href="#" class="bg-gray-900 text-gray-100 px-5 py-3 font-semibold rounded">Start Now</a>
                        </slot>
                    </div>
                </div>
            </div>
        </div>-->
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
