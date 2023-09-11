import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="search-global"
export default class extends Controller {
  static targets = ["form","input","posts","list"];
  connect() {
    console.log("connected")
    // console.log(this.formTarget);
  }

  update (){
   const url = `${this.formTarget.action}?query=${this.inputTarget.value}`;
    fetch(url,{
      headers: {"Accept": "text/plain"}
    })
    .then(response =>response.text())
    .then(data => {
      this.listTarget.outerHTML = data;
    })
  }
}
