/** @type {import('tailwindcss').Config} */
module.exports = {
    content: [
        "./resources/views/tailwind/**/*.{html,js,blade.php}",
        "./resources/views/public/**/*.{html,js,blade.php}",
    ],
    theme: {
        backgroundImage: {
            cover: "url('img/l.png')",
        },
        fontFamily: {
            lora: ["Lora"],
            inter: ["Inter"],
        },
        container: {
            center: true,
            padding: "16px",
        },

        extend: {
            colors: {
                primary: "#009846",
                dark: "#0f172a",
                secondary: "#64748b",
                info: "#67C4D8",
            },
            screens: {
                "2xl": "1320px",
            },
        },
    },
    plugins: [require("@tailwindcss/line-clamp")],
};
