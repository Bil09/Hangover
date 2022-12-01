import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="check"
export default class extends Controller {
  static targets = ["checkAll", "checkbox"]
  connect() {
    console.log("connected");
  }
  checkAll() {
    console.count("click v3 all");
    if (this.checkAllTarget.classList[1] === "fa-square") {
      this.checkAllTarget.classList.replace("fa-square", "fa-square-check")
      this.checkboxTargets.forEach(element => {
        element.classList.replace("fa-plus", "fa-check")
      });
    } else {
      this.checkAllTarget.classList.replace("fa-square-check", "fa-square");
      this.checkboxTargets.forEach(element => {
        element.classList.replace("fa-check", "fa-plus")
      });
    }
  }
  checkOne(event) {
    console.count("ld");
    console.log(event.srcElement);
    if (event.srcElement.classList[1] == "fa-plus") {
      console.log(event.srcElement.classList[1]);
      event.srcElement.classList.replace("fa-plus", "fa-check")
    } else {
      console.log("inside")
      console.log(event.srcElement.classList[1]);
      event.srcElement.classList.replace("fa-check", "fa-plus")
    }
  }
}
