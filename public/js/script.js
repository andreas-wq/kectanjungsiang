// navbar fiixed
window.onscroll = function () {
    const header = document.querySelector("header");
    const fiixedNav = header.offsetTop;
    if (window.pageYOffset > fiixedNav) {
        header.classList.add("navbar-fixed");
    } else {
        header.classList.remove("navbar-fixed");
    }
};

// hamburger

const hamburger = document.querySelector("#hamburger");
const navMenu = document.querySelector("#nav-menu");
hamburger.addEventListener("click", function () {
    hamburger.classList.toggle("hamburger-active");
    navMenu.classList.toggle("hidden");
});

// sub menu
const menu1 = document.querySelector("#menu1");

const subMenu1 = document.querySelector("#submenu1");
// sub menu2
const menu2 = document.querySelector("#menu2");

const subMenu2 = document.querySelector("#submenu2");
3;
const menu3 = document.querySelector("#menu3");

const subMenu3 = document.querySelector("#submenu3");
menu1.addEventListener("click", function () {
    console.log("submenu");
    subMenu1.classList.toggle("block");
});

menu2.addEventListener("click", function () {
    console.log("submenu");
    subMenu2.classList.toggle("block");
});

menu3.addEventListener("click", function () {
    console.log("submenu");
    subMenu3.classList.toggle("block");
});
