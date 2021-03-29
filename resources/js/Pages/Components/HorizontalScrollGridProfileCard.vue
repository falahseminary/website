<template>
    <!-- partially pasted from: https://tailwindcomponents.com/component/profile-card -->
    <div class="w-64 h-96 m-12 bg-transparent">
        <div class="w-full h-full overflow-y-visible
                    bg-gradient-to-r from-yellow-50 via-white to-green-50
                    rounded-lg shadow-md hover:shadow-xl transition-shadow duration-200 ease-in-out">
            <img :src="bg_url" class="w-full h-1/3 object-cover rounded-t-lg" />
            <div class="flex justify-center -mt-8">
                <slot name="profile_pic">
                    <img :src="profile_url" class="rounded-full border-solid border-white border-2 -mt-3">
                </slot>
            </div>
            <div class="text-center px-3 pb-6 pt-2">
                <h3 class="text-black text-sm bold font-sans">
                    <slot name="name">
                        Mysterious Sheikh
                    </slot>
                </h3>
                <p class="mt-2 font-sans font-light text-grey-dark">
                    <slot name="title">
                        Teacher
                    </slot>
                </p>
            </div>
            <div class="flex justify-center pb-3 text-grey-dark">
                <div class="text-center mr-3 border-r pr-3">
                    <h2>12</h2>
                    <span>Posts</span>
                </div>
                <div class="text-center">
                    <h2>34</h2>
                    <span>Classes</span>
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
                bg_url : "media/aboutus-bg.jpg",
                profile_url : "media/logo-dev.png"
            }
        },
        methods: {},
    }
</script>