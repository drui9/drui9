/** @type {import('tailwindcss').Config} */
module.exports = {
  darkMode: 'class',
  content: [
    '*.html'
  ],
  theme: {
    extend: {
      colors: {
        'orange': '#ffa500',
        'orange-red': '#ff4500',
        'dark-orange': '#ff8c00'
      },
      fontFamily: {
        'pacifico': ['Pacifico', 'cursive'],
        'gentium': ['Gentium Book Basic', 'serif']
      }
    },
  }
}
