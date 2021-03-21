<template>
    <div>
        <div :class="['self-center', 'px-'+pad_x, 'py-'+pad_y]">

            <slot name="html">Html Here</slot>

        </div>
    </div>
</template>


<script>
    export default {
        components: {},
        data() { 
            return {
                'pad_x' : 14,
                'pad_y' : 14
            }
        },
        methods: {},
    }
</script>
