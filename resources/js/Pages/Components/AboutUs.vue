<template>
    <div>
        <!-- partially pasted from: https://tailwindcomponents.com/component/paragraph-with-image -->
        <div>
            <div class="bg-gray-100 lg:py-12 lg:flex lg:justify-center">
                <pop-card>
                    <template #title-normal>About</template>
                    <template #title-highlighted>Us</template>
                    <template #text><slot name="about-text">Lorem ipsum blah blah.</slot></template>
                    <template #footer class="hidden"></template>
                </pop-card>
                <pop-card>
                    <template #title-normal>Our</template>
                    <template #title-highlighted>Vision</template>
                    <template #text><slot name="vision-text">Lorem ipsum blah blah.</slot></template>
                    <template #footer class="hidden"></template>
                </pop-card>
            </div> 
        </div>
    </div>
</template>


<script>
    import PopCard from "./PopCard";
    export default {
        components: {
            PopCard
        },
        data() { return {} },
        methods: {},
    }
</script>
