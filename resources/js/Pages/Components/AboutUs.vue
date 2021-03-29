<template>
    <div>
        <horizontal-scroll-grid>
            <template #grid>
                <horizontal-scroll-grid-pop-card>
                    <template #title-normal>About</template>
                    <template #title-highlighted>Us</template>
                    <template #text><slot name="about-text">Lorem ipsum blah blah.</slot></template>
                    <template #footer>&#8203;</template>
                </horizontal-scroll-grid-pop-card>
                <horizontal-scroll-grid-pop-card>
                    <template #title-normal>Our</template>
                    <template #title-highlighted>Vision</template>
                    <template #text><slot name="vision-text">Lorem ipsum blah blah.</slot></template>
                    <template #footer>&#8203;</template>
                </horizontal-scroll-grid-pop-card>
            </template>
        </horizontal-scroll-grid>
        <horizontal-scroll-area class="hidden">
            <template #title>&#8203;</template>
            <template #area>
                <horizontal-scroll-area-pop-card>
                    <template #title-normal>About</template>
                    <template #title-highlighted>Us</template>
                    <template #text><slot name="about-text">Lorem ipsum blah blah.</slot></template>
                    <template #footer>&#8203;</template>
                </horizontal-scroll-area-pop-card>
                <horizontal-scroll-area-pop-card>
                    <template #title-normal>Our</template>
                    <template #title-highlighted>Vision</template>
                    <template #text><slot name="vision-text">Lorem ipsum blah blah.</slot></template>
                    <template #footer>&#8203;</template>
                </horizontal-scroll-area-pop-card>
                <horizontal-scroll-area-pop-card>
                    <template #title-normal>This is a</template>
                    <template #title-highlighted>Test</template>
                    <template #text>Lorem ipsum blah blah.</template>
                    <template #footer>&#8203;</template>
                </horizontal-scroll-area-pop-card>
            </template>
        </horizontal-scroll-area>
    </div>
</template>


<script>
    import HorizontalScrollGrid from "./HorizontalScrollGrid";
    import HorizontalScrollGridPopCard from "./HorizontalScrollGridPopCard";
    import HorizontalScrollArea from "./HorizontalScrollArea";
    import HorizontalScrollAreaPopCard from "./HorizontalScrollAreaPopCard";
    export default {
        components: {
            HorizontalScrollGrid,
            HorizontalScrollGridPopCard,
            HorizontalScrollArea,
            HorizontalScrollAreaPopCard,
        },
        data() { return {} },
        methods: {},
    }
</script>
