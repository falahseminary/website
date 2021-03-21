<template>
    <landing-layout>
        yo
    </landing-layout>
</template>

<script>
    import LandingLayout from "../Layouts/LandingLayout";
    //import { Background } from "@/Pages/Test/Background"     // <-- works
    //import JetBanner from '@/Jetstream/Banner'    // <-- works

    export default {
        components : {
            LandingLayout
        },

        data() {
            return {
                'pad_x' : 10,
                'pad_y' : 2
            }
        },
        
        props: {
            canLogin: Boolean,
            canRegister: Boolean,
            laravelVersion: String,
            phpVersion: String
        }
    }
</script>
