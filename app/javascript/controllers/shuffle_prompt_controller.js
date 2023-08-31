import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="shuffle-prompt"
export default class extends Controller {
  static targets = ["prompt", "promptInput"]


  clear(event) {
    event.preventDefault()
    this.promptTarget.value = ""
    this.promptInputTarget.value = ""
    this.promptTarget.classList.add("d-none")
    this.promptInputTarget.classList.add("d-none")
  }

  shuffle(event) {
    event.preventDefault()

    fetch("/prompt", {
    headers: { "Accept": "text/plain" },
  })
    .then(response => response.text())
    .then((data) => {
      console.log(data)
      this.promptTarget.outerHTML = data
      this.promptInputTarget.value = this.promptTarget.dataset.promptId
    })
    }
  }
