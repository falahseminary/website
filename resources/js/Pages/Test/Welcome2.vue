<template>
    
</template>


<script>
//import AppLayoutNoTeams from '../../Layouts/AppLayoutNoTeams.vue';
export default {
    components : {
        
    },
    data () { // locally defined
        return {
            title : 'Test | Welcome',
            bg_url : 'https://source.unsplash.com/featured/?nature,architecture,interiors',
            good_clr : 'bg-green-400',
            bad_clr : 'bg-yellow-100',
            good_txt_clr : 'text-white',
            bad_txt_clr : 'text-black',
            good_link : "route('login')",
            bad_link : "route('register')",
            showingNavigationDropdown: false
        }
    },
    methods : {},
    props : {}, // backend defined
    computed : {}
}
</script>