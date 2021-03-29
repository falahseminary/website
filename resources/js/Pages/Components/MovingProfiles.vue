<template>
    <div>

        <horizontal-scroll-grid>
            <template #grid>
                <horizontal-scroll-grid-profile-card>
                    <template #name>Mufti Suleiman</template>
                    <template #title>Principal</template>
                </horizontal-scroll-grid-profile-card>
                <horizontal-scroll-grid-profile-card>
                    <template #name>Maulana Aiyub</template>
                    <template #title>Teacher</template>
                </horizontal-scroll-grid-profile-card>
                <horizontal-scroll-grid-profile-card>
                    <template #name>Moulana Yasir</template>
                    <template #title>Arabic & Seerah Teacher</template>
                </horizontal-scroll-grid-profile-card>
                <horizontal-scroll-grid-profile-card>
                    <template #name>Moulana Bilal</template>
                    <template #title>Teacher</template>
                </horizontal-scroll-grid-profile-card>
                <horizontal-scroll-grid-profile-card>
                    <template #name>Moulana Ismael</template>
                    <template #title>Arabic Teacher</template>
                </horizontal-scroll-grid-profile-card>
                <horizontal-scroll-grid-profile-card>
                    <template #name>Moulana Ibrahim</template>
                    <template #title>Head of Publishing</template>
                </horizontal-scroll-grid-profile-card>
                <horizontal-scroll-grid-profile-card>
                    <template #name>Maulana Muhtasim</template>
                    <template #title>Teacher</template>
                </horizontal-scroll-grid-profile-card>
            </template>
        </horizontal-scroll-grid>

    </div>
</template>


<script>
    import HorizontalScrollGrid from "./HorizontalScrollGrid";
    import HorizontalScrollGridProfileCard from "./HorizontalScrollGridProfileCard";
    export default {
        components: {
            HorizontalScrollGrid,
            HorizontalScrollGridProfileCard
        },
        data() { return {} },
        methods: {},
    }
</script>
