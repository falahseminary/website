<template>
    <landing-layout>

        <!-- :::NAV::: -->
        <navbar><!-- any slots? --></navbar>

        <!-- :::BODY::: -->
        <header><!-- any slots? --></header>

        <landing-content>

            <moving-announcements><!-- any slots? --></moving-announcements>

            <moving-events><!-- any slots? --></moving-events>

            <stats><!-- any slots? --></stats>

            <!-- about us -->
            <aboutus><!-- any slots? --></aboutus>
            
            <!-- staff -->
            <moving-staff><!-- any slots? --></moving-staff>

        </landing-content>

        <!-- footer -->
        <footer><!-- any slots? --></footer>

    </landing-layout>
</template>

<script>
    import { LandingLayout } from "@/Layouts/LandingLayout";
    export default {
        components : {
            LandingLayout,
            LandingContent,
            Navbar,
            Header,
            MovingAnnoucements,
            MovingEvents,
            Stats,
            AboutUs,
            MovingStaff,
            Footer
        },
        props: {
            canLogin: Boolean,
            canRegister: Boolean,
            laravelVersion: String,
            phpVersion: String,
        }
    }
</script>
