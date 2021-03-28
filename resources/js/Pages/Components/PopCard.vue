<template>
    <div>
        <!-- partially pasted from: https://tailwindcomponents.com/component/paragraph-with-image -->
        <div class="bg-white lg:mx-8 lg:flex lg:max-w-5xl lg:shadow-lg lg:rounded-lg">
            <div class="lg:w-1/2">
                <div class="h-64 bg-cover lg:rounded-lg lg:h-full" :style="bg_url"></div>
            </div>
            <div class="py-12 px-6 max-w-xl lg:max-w-5xl lg:w-1/2">
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
</template>


<script>
    export default {
        components: {},
        data() {
            return {
                bg_url: "background-image:url('https://images.unsplash.com/photo-1497493292307-31c376b6e479?ixlib=rb-1.2.1&auto=format&fit=crop&w=1351&q=80')"
            }
        },
        methods: {},
    }
</script>
