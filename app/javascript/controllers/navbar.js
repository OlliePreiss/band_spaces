// sticky_navbar_controller.js

import { Controller } from "stimulus";

export default class extends Controller {
  static targets = ["navbar-lewagon"];

  connect() {
    this.sticky = this.navbarTarget.offsetTop;
    window.addEventListener("scroll", this.handleScroll.bind(this));
  }

  disconnect() {
    window.removeEventListener("scroll", this.handleScroll);
  }

  handleScroll() {
    if (window.pageYOffset >= this.sticky) {
      this.navbarTarget.classList.add("sticky");
    } else {
      this.navbarTarget.classList.remove("sticky");
    }
  }
}
