import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="shuffle-prompt"
export default class extends Controller {
  static targets = ["prompt"]

  shuffle(event) {
    event.preventDefault()

      fetch("/prompt", {
    method: "POST",
    headers: { "Accept": "text/plain" },
    body: new FormData(this.formTarget)
  })
    .then(response => response.text())
    .then((data) => {
      console.log(data)
      this.promptTarget = data
    })
    }
  }
