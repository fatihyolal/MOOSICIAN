import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="comments"
export default class extends Controller {
  static targets = ["commentsContainer", "indexCard", "form"]

  connect() {
    console.log("hello")
  }

  display(event) {
    event.preventDefault()
    console.log("get ajax request")
    this.commentsContainerTarget.classList.toggle("d-none")
    this.indexCardTarget.classList.toggle("bottom-border-radius")
  }

  send(event) {
    event.preventDefault()
    fetch(this.formTarget.action, {
      method: "POST",
      headers: { "Accept": "application/json" },
      body: new FormData(this.formTarget)
    })
      .then(response => response.json())
      .then((data) => {
        if (data.inserted_item) {
          // beforeend could also be dynamic with Stimulus values
          this.commentsContainerTarget.insertAdjacentHTML("afterbegin", data.inserted_item)
        }
        this.formTarget.outerHTML = data.form
      })
  }
}
