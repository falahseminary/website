<template>
    <div>
        <a href="#" class="p-14 self-center
                IGNORE.hover:bg-yellow-100 IGNORE.focus:bg-yellow-50
                hover:text-red-500 focus:text-indigo-600
                transition duration-200 ease-out
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
