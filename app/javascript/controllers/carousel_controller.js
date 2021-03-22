import Carousel from "stimulus-carousel"
import Swiper from 'swiper'
import 'swiper/swiper-bundle.min.css'

export default class extends Carousel {

  updateSlide() {
    const value = this.swiper.slides[this.swiper.activeIndex].dataset.value
    document.querySelector('#user_avatar').value = value
  }

  initialize () {
    this.updateSlide = this.updateSlide.bind(this)
  }

  connect() {
    super.connect()

    this.swiper = new Swiper('.swiper-container', {
      direction: 'horizontal',
      loop: false,
      navigation: {
        nextEl: '.swiper-button-next',
        prevEl: '.swiper-button-prev'
      }
    })

    this.swiper.on('slideChangeTransitionEnd', this.updateSlide);
  }
}



