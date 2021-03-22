// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.
import { Application } from "stimulus"

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")

import "bootstrap";

// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)



  const input = document.querySelector("mettre class de l'input");

  // fetch("est-il possible de mettre le seed")
  //   .then(response => response.json())
  //   .then((data) => {
  //     data.Search.forEach((result) => {
  //       const movieTag = `<li class="list-inline-item">
  //         <img src="${result.Poster}" alt="">
  //         <p>${result.Title}</p>
  //       </li>`;
  //       results.insertAdjacentHTML("beforeend", movieTag);
  //     });
  //   });


// "récupérer la valeur de text_field_tag"
// "avec cette valeur rechercher les themes, channel et video qui ont l'input"
// input.addEventListener('keyup', (event) => {
//   event.preventDefault();
//   const input = event.currentTarget.querySelector(".mettre la class de l'input");
//     inputs.forEach((input)) => {
//       "faire le code de app"
//     }
//   input.innerHTML = '';
//   "recherche theme, agora, video" (input.value);
// });


import Carousel from "stimulus-carousel"
import Swiper from 'swiper'
import 'swiper/swiper-bundle.min.css'

const swiper = new Swiper('.swiper-container', {
  direction: 'horizontal',
  loop: false,
  navigation: {
  nextEl: '.swiper-button-next',
  prevEl: '.swiper-button-prev',
},

});

const application = Application.start()
application.register("carousel", Carousel)

document.addEventListener('turbolinks:load', () => {

  });

document.getElementById( "boxer" ).onclick = function() {

};
