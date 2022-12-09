import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="click"
export default class extends Controller {
  static targets = ["heart", "first", "second"]
  connect() {}

  switchHeart() {
    if (this.heartTarget.classList[0] == "fa-regular") {
      this.heartTarget.classList.replace("fa-regular", "fa-solid")
    } else {
      this.heartTarget.classList.replace("fa-solid", "fa-regular")
    }
  }
  switchImage() {
    const img1 = this.firstTarget.src
    const img2 = this.secondTarget.src
    this.firstTarget.src = img2
    this.secondTarget.src = img1
  }
}
