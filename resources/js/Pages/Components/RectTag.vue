<template>
    <div>
        <a href="#" class="self-center rounded-none p-4
                hover:bg-primary focus:bg-trim-a active:bg-trim-b
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
