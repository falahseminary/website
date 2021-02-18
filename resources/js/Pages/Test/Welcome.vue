<template>
    <Background>
        <template #before>
            <div v-if="canLogin" class="hidden fixed top-0 right-0 px-6 py-4 sm:block">
                <inertia-link v-if="$page.props.user" href="/dashboard" class="text-sm text-gray-700 underline">
                    Dashboard
                </inertia-link>

                <template v-else>
                    <inertia-link :href="route('login')" class="text-sm text-gray-700 underline">
                        Login
                    </inertia-link>

                    <inertia-link v-if="canRegister" :href="route('register')" class="ml-4 text-sm text-gray-700 underline">
                        Register
                    </inertia-link>
                </template>
            </div>
        </template>

        <template #main-title>
            Falah Seminary
        </template>

        <template #sub-title>
            Miamisburg, OH
        </template>
        
        <template #good-btn>
            Good
        </template>
        
        <template #bad-btn>
            Bad
        </template>

        <template #after>
            <div class="w-full h-screen bg-center bg-no-repeat bg-cover" style="background-image: url('https://source.unsplash.com/featured/?nature,architecture,interiors');">
                <div class="w-full h-screen bg-opacity-50 bg-black flex justify-center items-center relative">
                    <div class="mx-4 text-center text-white">
                        <h1 class="font-bold text-6xl mb-4">This is a test</h1>
                        <h2 class="font-bold text-3xl mb-12">This is a test</h2>
                    </div>
                    <div class="absolute bottom-14">
                        <a href="" class="border-2 border-white rounded-md font-bold text-white px-4 py-3 transition duration-300 ease-in-out hover:bg-blue-500 hover:text-white mr-6">
                            Click here
                        </a>
                    </div>
                </div>
            </div>
        </template>
    </Background>
</template>


<script>
import Background from './Background.vue';
export default {
    components : {
        //AppLayout // ES6 shorthand for:   'AppLayout' : AppLayout
        Background
    },
    data () { // locally defined
        return {
            'title' : 'Test | Welcome',
            //'bg_url' : 'https://source.unsplash.com/featured/?nature,architecture,interiors',
            'good_clr' : 'bg-green-400',
            'bad_clr' : 'bg-yellow-100',
            'good_txt_clr' : 'text-white',
            'bad_txt_clr' : 'text-black',
            'good_link' : "route('login')", // <-- to not reload pg, use inertia link in Background.vue
            'bad_link' : "route('register')"
        }
    },
    methods : {},
    props : { // defined in controller and sent here as a prop via a route
        canLogin: Boolean,
        canRegister: Boolean,
        laravelVersion: String,
        phpVersion: String,
    },
    computed : {}
}
</script>

<!--
<style scoped>
    .bg-gray-100 {
        background-color: #f7fafc;
        background-color: rgba(247, 250, 252, var(--tw-bg-opacity));
    }

    .border-gray-200 {
        border-color: #edf2f7;
        border-color: rgba(237, 242, 247, var(--tw-border-opacity));
    }

    .text-gray-400 {
        color: #cbd5e0;
        color: rgba(203, 213, 224, var(--tw-text-opacity));
    }

    .text-gray-500 {
        color: #a0aec0;
        color: rgba(160, 174, 192, var(--tw-text-opacity));
    }

    .text-gray-600 {
        color: #718096;
        color: rgba(113, 128, 150, var(--tw-text-opacity));
    }

    .text-gray-700 {
        color: #4a5568;
        color: rgba(74, 85, 104, var(--tw-text-opacity));
    }

    .text-gray-900 {
        color: #1a202c;
        color: rgba(26, 32, 44, var(--tw-text-opacity));
    }

    @media (prefers-color-scheme: dark) {
        .dark\:bg-gray-800 {
            background-color: #2d3748;
            background-color: rgba(45, 55, 72, var(--tw-bg-opacity));
        }

        .dark\:bg-gray-900 {
            background-color: #1a202c;
            background-color: rgba(26, 32, 44, var(--tw-bg-opacity));
        }

        .dark\:border-gray-700 {
            border-color: #4a5568;
            border-color: rgba(74, 85, 104, var(--tw-border-opacity));
        }

        .dark\:text-white {
            color: #fff;
            color: rgba(255, 255, 255, var(--tw-text-opacity));
        }

        .dark\:text-gray-400 {
            color: #cbd5e0;
            color: rgba(203, 213, 224, var(--tw-text-opacity));
        }
    }
</style>
-->