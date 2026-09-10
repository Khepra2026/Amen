/** @type {import('tailwindcss').Config} */
export default {
  content: ["./index.html","./src/**/*.{js,ts,jsx,tsx}"],
  theme: {
    extend: {
      colors: { khepra: { gold: "#C9A86A", night: "#0A0A0B", stone: "#1A1A1D" } },
      fontFamily: { sovereign: ["Cinzel","serif"], corpus: ["EB Garamond","serif"] }
    }
  },
  plugins: []
}
