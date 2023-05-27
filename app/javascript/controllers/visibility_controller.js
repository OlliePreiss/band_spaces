import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = [ "hideable" , "button", "span" ]

  showTargets() {
    this.hideableTargets.forEach(el => {
      el.hidden = false
    });
  }

  hideTargets() {
    this.hideableTargets.forEach(el => {
      el.hidden = true
    });
  }

  toggleTargets() {
    this.hideableTargets.forEach((el) => {
      el.hidden = !el.hidden
      if (el.hidden) {
        this.spanTargets.forEach(el => {
          el.innerText = "Show"
        });
      } else {
        this.spanTargets.forEach(el => {
          el.innerText = "Hide"
        });
      }
    });

  }
}
