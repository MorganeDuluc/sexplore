// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")

import "controllers"
import "bootstrap";

// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)

import Carousel from "stimulus-carousel"
import Swiper from 'swiper'
import 'swiper/swiper-bundle.min.css'

// const swiper = new Swiper('.swiper-container', {
//   direction: 'horizontal',
//   loop: false,
//   navigation: {
//   nextEl: '.swiper-button-next',
//   prevEl: '.swiper-button-prev',
// },

// });

document.addEventListener('turbolinks:load', () => {

  });


// import { Application } from "stimulus"
// import ScrollTo from "stimulus-scroll-to"

// const application = Application.start()
// application.register("scroll-to", ScrollTo)
