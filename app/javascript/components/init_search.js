import Rails from '@rails/ujs'

const initSearch = () => {
  const searchJs = document.querySelector(".search-js");
  if (searchJs) {
    document.querySelector("#query").addEventListener('input', (event) => {
      Rails.fire(searchJs.querySelector('form'), 'submit')
    })
  }
}

export { initSearch };
