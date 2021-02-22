<template>
    <div>

        <!-- :::NAV::: -->
        <navbar>
            <template #logo>
                Logo
            </template>
            <template #Options>
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
                Annoucements...
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
    import JetApplicationMark from '@/Jetstream/ApplicationMark'
    import JetBanner from '@/Jetstream/Banner'
    import JetDropdown from '@/Jetstream/Dropdown'
    import JetDropdownLink from '@/Jetstream/DropdownLink'
    import JetNavLink from '@/Jetstream/NavLink'
    import JetResponsiveNavLink from '@/Jetstream/ResponsiveNavLink'

    export default {
        components: {
            JetApplicationMark,
            JetBanner,
            JetDropdown,
            JetDropdownLink,
            JetNavLink,
            JetResponsiveNavLink,
        },

        data() {
            return {
                showingNavigationDropdown: false,
            }
        },

        methods: {
            logout() {
                this.$inertia.post(route('logout'));
            },
        }
    }
</script>
