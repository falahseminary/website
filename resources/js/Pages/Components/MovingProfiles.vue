<template>
    <div>

        <horizontal-scroll-grid>
            <template #grid>
                <div @click="bio_ms()">
                    <horizontal-scroll-grid-profile-card>
                        <template #name>Mufti Suleiman</template>
                        <template #title>Principal</template>
                        <template #profile_pic>
                            <img src="media/ms.jpeg" class="rounded-full w-28 border-solid border-white border-2 -mt-3">
                        </template>
                    </horizontal-scroll-grid-profile-card>
                </div>
                
                <div @click="bio_ma()">
                    <horizontal-scroll-grid-profile-card>
                        <template #name>Maulana Aiyub</template>
                        <template #title>Teacher</template>
                        <template #profile_pic>
                            <img src="media/ma.jpeg" class="rounded-full w-28 border-solid border-white border-2 -mt-3">
                        </template>
                    </horizontal-scroll-grid-profile-card>
                </div>

                <div @click="bio_my()">
                    <horizontal-scroll-grid-profile-card @click="bio_ms">
                        <template #name>Moulana Yasir</template>
                        <template #title>Arabic & Seerah Teacher</template>
                        <template #profile_pic>
                            <img src="media/my.jpg" class="rounded-full w-28 border-solid border-white border-2 -mt-3">
                        </template>
                    </horizontal-scroll-grid-profile-card>
                </div>

                <div @click="bio_mb()">
                    <horizontal-scroll-grid-profile-card @click="bio_ms">
                        <template #name>Moulana Bilal</template>
                        <template #title>Teacher</template>
                        <template #profile_pic>
                            <img src="media/mb.jpeg" class="rounded-full w-28 border-solid border-white border-2 -mt-3">
                        </template>
                    </horizontal-scroll-grid-profile-card>
                </div>
                
                <div @click="bio_mis()">
                    <horizontal-scroll-grid-profile-card @click="bio_ms">
                        <template #name>Moulana Ismael</template>
                        <template #title>Arabic Teacher</template>
                        <template #profile_pic>
                            <img src="media/mis.jpg" class="rounded-full w-28 border-solid border-white border-2 -mt-3">
                        </template>
                    </horizontal-scroll-grid-profile-card>
                </div>
                
                <div @click="bio_mib()">
                    <horizontal-scroll-grid-profile-card @click="bio_ms">
                        <template #name>Moulana Ibrahim</template>
                        <template #title>Head of Publishing</template>
                        <template #profile_pic>
                            <img src="media/mib.jpeg" class="rounded-full w-28 border-solid border-white border-2 -mt-3">
                        </template>
                    </horizontal-scroll-grid-profile-card>
                </div>
                
                <div @click="bio_mm()">
                    <horizontal-scroll-grid-profile-card @click="bio_ms">
                        <template #name>Maulana Muhtasim</template>
                        <template #title>Teacher</template>
                        <template #profile_pic>
                            <img src="media/mm.png" class="rounded-full w-28 border-solid border-white border-2 -mt-3">
                        </template>
                    </horizontal-scroll-grid-profile-card>
                </div>
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
        methods: {
            bio_ms : function () {window.location = "https://masjidicc.com/team-member/7/?n=Mufti+Suleiman&pageName=seminary";},
            bio_ma : function () {window.location = "https://masjidicc.com/team-member/25/?n=Maulana+Aiyub&pageName=seminary";},
            bio_my : function () {window.location = "https://masjidicc.com/team-member/8/?n=Moulana+Yasir&pageName=seminary";},
            bio_mb : function () {window.location = "https://masjidicc.com/team-member/9/?n=Moulana+Bilal&pageName=seminary";},
            bio_mis : function () {window.location = "https://masjidicc.com/team-member/10/?n=Moulana+Ismael&pageName=seminary";},
            bio_mib : function () {window.location = "https://masjidicc.com/team-member/6/?n=Moulana+Ibrahim&pageName=seminary";},
            bio_mm : function () {alert('Moulana Mohtasim does not have a bio yet!');},
        },
    }
</script>
