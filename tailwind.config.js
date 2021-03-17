const defaultTheme = require('tailwindcss/defaultTheme');

module.exports = {
    purge: [
        './vendor/laravel/jetstream/**/*.blade.php',
        './storage/framework/views/*.php',
        './resources/views/**/*.blade.php',
        './resources/js/**/*.vue',
    ],

    theme: {
        extend: {
            fontFamily: {
                sans: ['Nunito', ...defaultTheme.fontFamily.sans],
            },
            colors: {
                'primary': 'rgb(217, 249, 165)',
                'secondary': 'rgb(105, 3, 117)',
                'trim-a': 'rgb(244, 254, 193)',
                'trim-b': 'rgb(44, 14, 55)',
                'trim-c': 'rgb(203, 66, 159)',
                /*
                'primary': 'var(--color-primary)',
                'secondary': 'var(--color-secondary)',
                'trim-a': 'var(--color-trim-a)',
                'trim-b': 'var(--color-trim-b)',
                'trim-c': 'var(--color-trim-c)',
                */
            }
        },
    },

    variants: {
        extend: {
            opacity: ['disabled'],
        },
    },

    plugins: [require('@tailwindcss/forms'), require('@tailwindcss/typography')],
};
