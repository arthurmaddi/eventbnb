import { Controller } from "@hotwired/stimulus";
import flatpickr from "flatpickr"; // You need to import this to use new flatpickr()
import rangePlugin from "flatpickrRangePlugin";
// Connects to data-controller="datepicker"
export default class extends Controller {
  static targets = ["start", "end", "dates"];
  connect() {
    const bookings = JSON.parse(this.datesTarget.dataset.bookings);

    flatpickr(this.startTarget, {
      plugins: [new rangePlugin({ input: this.endTarget })],
      minDate: "today",
      inline: true,
      dateFormat: "Y-m-d",
      disable: bookings,
    });
  }
}
