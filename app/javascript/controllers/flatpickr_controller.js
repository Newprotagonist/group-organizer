import { Controller } from "@hotwired/stimulus"
import flatpickr from "flatpickr";
import rangePlugin from "flatpickr/dist/plugins/rangePlugin";

// Connects to data-controller="flatpickr"
export default class extends Controller {
  connect() {
      flatpickr("#range_start", {
        altInput: true,
        plugins: [new rangePlugin({ input: "#range_end"})]
      });
    }

  }
