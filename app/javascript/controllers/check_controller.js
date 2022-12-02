import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="check"
export default class extends Controller {
  static targets = ["checkAll", "checkbox", "checkboxIcon"]
  static values = {
    party: Number,
    friend: Number
  }

  connect() {
    console.log(this.friendValue);
  }
  checkAll() {
    console.count("click v9 all");
    this.checkboxTargets.forEach(element => {
          element.checked = !element.checked
    });
    if (this.checkAllTarget.classList[1] === "fa-square") {
      this.checkAllTarget.classList.replace("fa-square", "fa-square-check")
      this.checkboxIconTargets.forEach(element => {
        element.classList.replace("fa-plus", "fa-check")
      })
     } else {
        this.checkAllTarget.classList.replace("fa-square-check", "fa-square");
        this.checkboxIconTargets.forEach(element => {
          element.classList.replace("fa-check", "fa-plus")
      })
    }
  }

  checkOne(event) {
    if (event.srcElement.classList[1] == "fa-plus") {
      event.srcElement.classList.replace("fa-plus", "fa-check")
      event.srcElement.previousElementSibling.checked = !event.srcElement.previousElementSibling.checked
    } else {
      event.srcElement.classList.replace("fa-check", "fa-plus")
      event.srcElement.previousElementSibling.checked = !event.srcElement.previousElementSibling.checked
    }
  }
}
