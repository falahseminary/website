<template>
    <div>
        <a href="#" class="self-center p-4
                hover:text-primary focus:border-trim-a active:border-trim-c
                transition duration-500 ease-out
                text-2xl">

            <slot name="text">
                <a class="" href="#">Text</a>
            </slot>

        </a>
    </div>
</template>


<script>
    export default {
        components: {},
        data() { return {} },
        methods: {},
    }
</script>
