<template>
    <div>
        <a href="#" class="p-14 self-center
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
