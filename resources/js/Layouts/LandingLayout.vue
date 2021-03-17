<template>
    <div>

        <!-- :::NAV::: -->
        <navbar>
            <template #logo>
                <img src="media/logo.png">
            </template>
            <template #options>
                Options...
            </template>
        </navbar>

        <!-- :::BODY::: -->
        <header-content>
            <template #title>
                Title
            </template>
        </header-content>

        <moving-announcements>
            <template #announcements>
                Announcements...
            </template>
        </moving-announcements>

        <moving-events>
            <template #events>
                Events...
            </template>
        </moving-events>

        <stats>
            <template #stats>
                Stats...
            </template>
        </stats>

        <about-us>
            <template #text>
                Text
            </template>
        </about-us>
        
        <moving-profiles>
            <template #cards>
                Cards...
            </template>
        </moving-profiles>

        <footer-content>
            <template #topics>
                Topics...
            </template>
        </footer-content>

    </div>
</template>

<script>
    import AboutUs from "../Pages/Components/AboutUs";
    import FooterContent from "../Pages/Components/FooterContent";
    import HeaderContent from "../Pages/Components/HeaderContent";
    import MovingAnnouncements from "../Pages/Components/MovingAnnouncements";
    import MovingEvents from "../Pages/Components/MovingEvents";
    import MovingProfiles from "../Pages/Components/MovingProfiles";
    import Navbar from "../Pages/Components/Navbar";
    import Stats from "../Pages/Components/Stats";
    export default {
        components: {
            AboutUs,
            FooterContent,
            HeaderContent,
            MovingAnnouncements,
            MovingEvents,
            MovingProfiles,
            Navbar,
            Stats
        },

        data() {
            return {}
        },

        methods: {
            logout() {
                this.$inertia.post(route('logout'));
            },
        },

        props: [
            'logo_src'
        ]
    }
</script>
