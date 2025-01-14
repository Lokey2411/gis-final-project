/** @type {import('tailwindcss').Config} */
module.exports = {
  content: ['./src/**/*.{html,js,jsx}'],
  theme: {
    extend: {
      animation: {
        toLeft: 'toLeft 0.5s ease-in-out',
      },
      keyframes: {
        toLeft: {
          from: {
            transform: 'translateX(100%)',
            opacity: 0,
          },

          to: {
            transform: 'translateX(0)',
            opacity: 1,
          },
        },
      },
    },
  },
  plugins: [],
};
