/** @type {import('tailwindcss').Config} */
export default {
  content: [
    "./index.html",
    "./src/**/*.{js,ts,jsx,tsx}",
  ],
  theme: {
    extend: {
      colors: {
        khepra: {
          black: "#0B0B0B",
          gold: "#D4AF37",
          goldLight: "#F3E5AB",
          green: "#0F5132",
          greenBright: "#198754",
        }
      }
    },
  },
  plugins: [],
}
