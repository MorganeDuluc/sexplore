const btnToggle =  () => {
  const questions = document.querySelectorAll('.form-check')
  if (questions) {
    questions.forEach(question => {
      question.addEventListener("click", (event) => {
        const button = document.querySelector('.btn-grey-question')
        if (button) {
          button.classList.remove('btn-grey-question')
          button.classList.add('btn-blue-question')
          button.removeAttribute("disabled")
        }
      })
    })
  }
}


export { btnToggle }
