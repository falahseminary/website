<template>
    <div>
        <!-- pasted from: https://tailwindcomponents.com/component/responsive-footer-2 -->

        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@iconscout/unicons@3.0.6/css/line.css">

        <footer class="bg-gray-800 pt-10">
            <div class="max-w-6xl m-auto text-gray-800 flex flex-wrap justify-left">
                <!-- Col-1 -->
                <div class="p-5 w-1/2 sm:w-4/12 md:w-3/12">

                    <!-- Col Title -->
                    <div class="text-xs uppercase text-gray-400 font-medium mb-6">
                        Quick Links
                    </div>

                    <!-- Links -->
                    <a href="https://falahseminary.org/" class="my-3 block text-gray-300 hover:text-gray-100 text-sm font-medium duration-700">
                        Home
                    </a>
                    <a href="https://masjidicc.com/" class="my-3 block text-gray-300 hover:text-gray-100 text-sm font-medium duration-700">
                        Masjid ICC
                    </a>
                    <a href="https://masjidicc.com/donate/" class="my-3 block text-gray-300 hover:text-gray-100 text-sm font-medium duration-700">
                        Donate
                    </a>
                    <a href="https://github.com/falahseminary" class="my-3 block text-gray-300 hover:text-gray-100 text-sm font-medium duration-700">
                        Development
                    </a>
                    <a href="https://masjidicc.com/seminary/" class="my-3 block text-gray-300 hover:text-gray-100 text-sm font-medium duration-700">
                        Old Home
                    </a>
                </div>

                <!-- Col-2 -->
                <div class="p-5 w-1/2 sm:w-4/12 md:w-3/12">
                    <!-- Col Title -->
                    <div class="text-xs uppercase text-gray-400 font-medium mb-6">
                        Masjid
                    </div>

                    <!-- Links -->
                    <a href="https://masjidicc.com/" class="my-3 block text-gray-300 hover:text-gray-100 text-sm font-medium duration-700">
                        Home
                    </a>
                    <a href="https://masjidicc.com/donate/" class="my-3 block text-gray-300 hover:text-gray-100 text-sm font-medium duration-700">
                        Donate
                    </a>
                    <a href="https://masjidicc.com/seminary/" class="my-3 block text-gray-300 hover:text-gray-100 text-sm font-medium duration-700">
                        Falah Seminary (Old)
                    </a>
                    <a href="https://masjidicc.com/about-us/" class="my-3 block text-gray-300 hover:text-gray-100 text-sm font-medium duration-700">
                        About Us
                    </a>
                    <a href="https://www.youtube.com/watch?v=6pFabzDqaXc" class="my-3 block text-gray-300 hover:text-gray-100 text-sm font-medium duration-700">
                        Introduction Video
                    </a>
                </div>

                <!-- Col-3 -->
                <div class="p-5 w-1/2 sm:w-4/12 md:w-3/12">
                    <!-- Col Title -->
                    <div class="text-xs uppercase text-gray-400 font-medium mb-6">
                        Development
                    </div>

                    <!-- Links -->
                    <a href="https://github.com/falahseminary" class="my-3 block text-gray-300 hover:text-gray-100 text-sm font-medium duration-700">
                        Home
                    </a>
                    <a href="https://github.com/Ibsardar" class="my-3 block text-gray-300 hover:text-gray-100 text-sm font-medium duration-700">
                        Author
                    </a>
                    <a href="https://jetstream.laravel.com/" class="my-3 block text-gray-300 hover:text-gray-100 text-sm font-medium duration-700">
                        Laravel Jetstream
                    </a>
                    <a href="https://tailwindcss.com/" class="my-3 block text-gray-300 hover:text-gray-100 text-sm font-medium duration-700">
                        Tailwind CSS
                    </a>
                    <a href="https://vuejs.org/" class="my-3 block text-gray-300 hover:text-gray-100 text-sm font-medium duration-700">
                        Vue
                    </a>
                    <a href="https://inertiajs.com/" class="my-3 block text-gray-300 hover:text-gray-100 text-sm font-medium duration-700">
                        Inertia
                    </a>
                </div>

                <!-- Col-3 -->
                <div class="p-5 w-1/2 sm:w-4/12 md:w-3/12">
                    <!-- Col Title -->
                    <div class="text-xs uppercase text-gray-400 font-medium mb-6">
                        Community
                    </div>

                    <!-- Links -->
                    <a href="https://twitter.com/IslamicCenterC1" class="my-3 block text-gray-300 hover:text-gray-100 text-sm font-medium duration-700">
                        Twitter
                    </a>
                    <a href="https://www.facebook.com/ICCMasjid/" class="my-3 block text-gray-300 hover:text-gray-100 text-sm font-medium duration-700">
                        Facebook
                    </a>
                    <a href="https://www.youtube.com/channel/UCULgqCfvbsRtP6661l6vieg" class="my-3 block text-gray-300 hover:text-gray-100 text-sm font-medium duration-700">
                        Youtube
                    </a>
                    <a href="https://github.com/falahseminary" class="my-3 block text-gray-300 hover:text-gray-100 text-sm font-medium duration-700">
                        GitHub
                    </a>
                </div>
            </div>

            <!-- Copyright Bar -->
            <div class="pt-2">
                <div class="flex pb-5 px-3 m-auto pt-5 
                    border-t border-gray-500 text-gray-400 text-sm 
                    flex-col md:flex-row max-w-6xl">
                    <div class="mt-2">
                        <slot name="credits">
                            Fake credits...
                        </slot>
                        <br>
                        © Copyright 2021. All Rights Reserved.
                    </div>

                    <!-- Required Unicons (if you want) -->
                    <div class="md:flex-auto md:flex-row-reverse mt-4 flex-row flex">
                        <a href="https://www.facebook.com/ICCMasjid/" class="w-6 mx-1">
                            <i class="uil uil-facebook-f"></i>
                        </a>
                        <a href="https://twitter.com/IslamicCenterC1" class="w-6 mx-1">
                            <i class="uil uil-twitter-alt"></i>
                        </a>
                        <a href="https://www.youtube.com/channel/UCULgqCfvbsRtP6661l6vieg" class="w-6 mx-1">
                            <i class="uil uil-youtube"></i>
                        </a>
                        <a href="https://www.instagram.com/invites/contact/?i=1i9kk8q0k6ozu&utm_content=kklodpo" class="w-6 mx-1">
                            <i class="uil uil-instagram"></i>
                        </a>
                    </div>
                </div>
            </div>
        </footer>

    </div>
</template>


<script>
    export default {
        components: {},
        data() { return {} },
        methods: {},
    }
</script>
