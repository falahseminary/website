<template>
    <app-layout-no-teams>
        <template #header>
            <h2 class="font-semibold text-xl text-gray-800 leading-tight">
                API Tokens
            </h2>
        </template>

        <div>
            <div class="max-w-7xl mx-auto py-10 sm:px-6 lg:px-8">
                <api-token-manager :tokens="tokens"
                                   :available-permissions="availablePermissions"
                                   :default-permissions="defaultPermissions" />
            </div>
        </div>
    </app-layout-no-teams>
</template>

<script>
    import ApiTokenManager from './ApiTokenManager'
    import AppLayoutNoTeams from '@/Layouts/AppLayoutNoTeams'

    export default {
        props: [
            'tokens',
            'availablePermissions',
            'defaultPermissions',
        ],

        components: {
            ApiTokenManager,
            AppLayoutNoTeams,
        },
    }
</script>
