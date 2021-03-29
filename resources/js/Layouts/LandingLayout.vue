<template>
    <div>

        <!-- :::NAV::: -->
        <navbar>
            <template #logo>
                <img src="media/logo-main.png" width=80 height=80>
            </template>
            <template #options>
                <navbar-link><template #text>Masjid ICC</template></navbar-link>
                <navbar-link><template #text>Home</template></navbar-link>
            </template>
        </navbar>

        <!-- :::BODY::: -->
        <header-content>
            <template #supertext>
                ﷽
            </template>
            <template #title>
                Falah Seminary
            </template>
            <template #subtitle>
                Falah Ul Darain International Seminary
            </template>
        </header-content>

        <moving-announcements class="hidden">
            <template #announcements>
                Announcements...
            </template>
        </moving-announcements>

        <moving-events class="hidden">
            <template #events>
                Events...
            </template>
        </moving-events>

        <stats class="hidden">
            <template #stats>
                Stats...
            </template>
        </stats>

        <about-us>
            <template #about-text>
                Our institute was established in May 2017, as a center to produce future Muslim, American world leaders. We were initially operating in a local Masjid. However, within a year, our program, and in turn, it' needs, grew. We were in need of a larger physical space that aligned with our vision of an Islamic University in which pioneers of each science of Islam are produced. With the mercy of Allah, we found the place we were dreaming of, an ideal 20,000 sq. ft building with abundant classrooms, a musalla, offices, a cafeteria, a beautiful atrium, six acres of land, and more than 200 parking spaces. We founded a sister organization named Islamic Center of Centerville (ICC) and purchased the building. In August of 2019, soon after moving our operations in this new home, located in the heart of the Centerville/Miamisburg area, we saw extraordinary growth at an unexpected speed. There was a flood of people flocking to the center from all age groups.
            </template>
            <template #vision-text>
                We envision from the establishment of our humble institution a means for the youth to acquire a closeness with Allah through following the sunnah of our Prophet Muhammad صلى الله عليه و سلم and attaining the very valuable branches of sacred Islamic knowledge that follows a path up to the Prophet Muhammad صلى الله عليه و سلم. To give them a sense of identity of who they are as Muslims and engender them to be leaders of their community where they will serve, lead, spread, and strengthen the Islamic identity of the coming generations.
            </template>
        </about-us>
        
        <moving-profiles class="hidden">
            <template #cards>
                Cards...
            </template>
        </moving-profiles>

        <footer-content>
            <template #topics>
                Topics...
            </template>
            <template #credits>
                <a href='https://www.freepik.com/vectors/background'>Background vector created by kjpargeter - www.freepik.com</a>
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
    import HoverText from "../Pages/Components/HoverText";
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
            HoverText,
            NavbarItem,
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
