import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="comments"
export default class extends Controller {
  static targets = ["commentsContainer", "indexCard"]

  connect() {
    console.log("hello")
  }

  display(event) {
    event.preventDefault()
    console.log("get ajax request")
    this.commentsContainerTarget.classList.toggle("d-none")
    this.indexCardTarget.classList.toggle("bottom-border-radius")
  }
}
