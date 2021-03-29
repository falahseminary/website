const defaultTheme = require('tailwindcss/defaultTheme');
const plugin = require('tailwindcss/plugin');

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

                '112': '28rem',
                '128': '32rem',
                '144': '36rem',
                '160': '40rem',
                '176': '44rem',
                '192': '48rem',
            },
            width: {
                '112': '28rem',
                '128': '32rem',
                '144': '36rem',
                '160': '40rem',
                '176': '44rem',
                '192': '48rem',
                
                '1/5-screen': '20vw',
                '2/5-screen': '40vw',
                '3/5-screen': '60vw',
                '4/5-screen': '80vw',
                '1/4-screen': '25vw',
                '3/4-screen': '75vw',
                '1/3-screen': '33.333333vw',
                '2/3-screen': '66.666666vw',
                '1/2-screen': '50vw',
            },
            height: {
                '112': '28rem',
                '128': '32rem',
                '144': '36rem',
                '160': '40rem',
                '176': '44rem',
                '192': '48rem',

                '1/5-screen': '20vh',
                '2/5-screen': '40vh',
                '3/5-screen': '60vh',
                '4/5-screen': '80vh',
                '1/4-screen': '25vh',
                '3/4-screen': '75vh',
                '1/3-screen': '33.333333vh',
                '2/3-screen': '66.666666vh',
                '1/2-screen': '50vh',
            }
        },
    },

    variants: {
        extend: {
            opacity: ['disabled'],
        },
    },

    plugins: [
        require('@tailwindcss/forms'),
        require('@tailwindcss/typography'),
        plugin(function({addUtilities: utils}) {
            utils({
                
                /* Hide scrollbar for Chrome, Safari and Opera */
                '.hide-scrollbar::-webkit-scrollbar': {
                    'display': 'none'
                },

                /* Hide scrollbar for IE, Edge and Firefox */
                '.hide-scrollbar' : {
                    '-ms-overflow-style': 'none',  /* IE and Edge */
                    'scrollbar-width': 'none'  /* Firefox */
                }
                
            });
        })
    ],
};
