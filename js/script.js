let userBox = document.querySelector(".header .header-2 .user-box");

document.querySelector("#user-btn").onclick = () => {
  userBox.classList.toggle("active");
  navBar.classList.remove('active');
};

let navBar = document.querySelector(".header .header-2 .navbar");

document.querySelector("#menu-btn").onclick = () => {
  navBar.classList.toggle("active");
  userBox.classList.remove('active');
};

var swiper = new Swiper(".home-slider", {
  spaceBetween: 30,
  centeredSlides: true,
  autoplay: {
    delay: 2500,
    disableOnInteraction: false,
  },
  pagination: {
    el: ".swiper-pagination",
    clickable: true,
  },
  navigation: {
    nextEl: ".swiper-button-next",
    prevEl: ".swiper-button-prev",
  },
});

window.onscroll = () => {
    userBox.classList.remove('active');
    navBar.classList.remove('active');

    if(window.scrollY > 60) {
        document.querySelector('.header .header-2').classList.add('active');
    } else {
        document.querySelector('.header .header-2').classList.remove('active');
    }
}