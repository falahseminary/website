<template>
    <div>

        <!-- :::NAV::: -->
        <navbar>
            <template #logo>
                <img src="media/logo-main.png" width=80 height=80>
            </template>
            <template #options>
                <navbar-link><template #text>Text 1</template></navbar-link>
                <navbar-link><template #text>Text 2</template></navbar-link>
                <navbar-link><template #text>Text 3</template></navbar-link>
                <navbar-item><template #html><pill-tag><template #text>Text 4</template></pill-tag></template></navbar-item>
                <navbar-item><template #html><rect-tag><template #text>Text 5</template></rect-tag></template></navbar-item>
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
    import NavbarItem from "../Pages/Components/NavbarItem";
    import NavbarLink from "../Pages/Components/NavbarLink";
    import PillTag from "../Pages/Components/PillTag";
    import RectTag from "../Pages/Components/RectTag";
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
            NavbarLink,
            PillTag,
            RectTag,
            NavbarItem,
            Stats
        },

        data() {
            return {
                'pad_x' : 10,
                'pad_y' : 2
            }
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
