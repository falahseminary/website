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
                sans: ['PT Sans', 'Nunito', ...defaultTheme.fontFamily.sans],
                serif: ['Crimson Text', 'Vollkorn', ...defaultTheme.fontFamily.serif]
            },
            colors: {
                'primary': 'rgb(217, 249, 165)',
                'secondary': 'rgb(105, 3, 117)',
                'trim-a': 'rgb(244, 254, 193)',
                'trim-b': 'rgb(44, 14, 55)',
                'trim-c': 'rgb(203, 66, 159)'
            },
            zIndex: {
                '-10': '-10',
                '-20': '-20',
                '-30': '-30',
            },
            minWidth: {
                '1/5': '20%',
                '1/4': '25%',
                '1/2': '50%',
                '3/4': '75%',
                '128': '32rem'
            },
            width: {
                '112': '28rem',
                '128': '32rem',
                '144': '36rem',
                '160': '40rem',
                '176': '44rem',
                '192': '48rem',
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
