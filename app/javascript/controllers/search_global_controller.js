import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="search-global"
export default class extends Controller {
  static targets = ["form","input","posts"];
  connect() {
    console.log(this.formTarget);
    console.log(this.postsTarget);
    console.log(this.inputTarget);
  }
}
