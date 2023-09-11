
import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static targets = ["container", "link"];

  show(event) {
    const url = event.currentTarget.href;

    fetch(url)
      .then(response => response.text())
      .then((data) => {

      let parser = new DOMParser();
      const doc = parser.parseFromString(data, 'text/html');
      const chatroom = doc.querySelector(".chatroom");

      this.containerTarget.innerHTML = chatroom.outerHTML;
    })
  }
}
