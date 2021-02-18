<template>
    <div class="w-full h-screen bg-center bg-no-repeat bg-cover" :style="bg_url">
        <slot name="before"></slot>
        <div class="w-full h-screen bg-opacity-50 bg-black flex justify-center items-center">
            <div class="mx-4 text-center text-white">
                <h1 class="font-bold text-6xl mb-4"><slot name="main-title"></slot></h1>
                <h2 class="font-bold text-3xl mb-12"><slot name="sub-title"></slot></h2>
                <div>
                    <a :href="good_link" :class="[good_clr, good_txt_clr]" class="rounded-md font-bold text-center px-4 py-3 transition duration-300 ease-in-out hover:bg-blue-600 mr-2">
                        <slot name="good-btn"></slot>
                    </a>
                    <a :href="bad_link" :class="[bad_clr, bad_txt_clr]" class="rounded-md font-bold text-center px-4 py-3 transition duration-300 ease-in-out hover:bg-red-600 ml-2">
                        <slot name="bad-btn"></slot>
                    </a>
                </div>
            </div>
        </div>
        <slot name="after"></slot>
    </div>
</template>


<script>
export default {
    components : {},
    data () { // locally defined
        return {
            'bg_url' : 'background-image: url("https://source.unsplash.com/featured/?nature,architecture,interiors");',
            'good_clr' : 'bg-green-400',
            'bad_clr' : 'bg-green-100',
            'good_txt_clr' : 'text-white',
            'bad_txt_clr' : 'text-black',
            'good_link' : "",
            'bad_link' : ""
        }
    },
    methods : {},
    props : {},
    computed : {}
}
</script>