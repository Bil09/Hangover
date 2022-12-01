import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="toggle"
export default class extends Controller {
    static targets = ["popup"]
    connect() {
        console.log("connected");
    }
    toggle(event) {
        event.preventDefault()
        this.popupTarget.classList.remove("hide-popup")
        console.log("click");

    }
}