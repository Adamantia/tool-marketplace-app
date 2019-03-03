import flatpickr from "flatpickr"
import "flatpickr/dist/flatpickr.min.css" // Note this is important!

flatpickr(".datepicker", {
  mode: "range",
  minDate: "today",
  maxDate: new Date().fp_incr(365)
 });
