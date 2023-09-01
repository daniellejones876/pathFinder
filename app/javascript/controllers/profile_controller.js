import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="profile"
export default class extends Controller {

  static targets = ['chart', 'calendar', 'weeklyBtn', 'monthlyBtn']

  showCalendar() {
    this.monthlyBtnTarget.setAttribute("disabled", "")
    this.weeklyBtnTarget.removeAttribute("disabled")
    this.chartTarget.classList.add('d-none')
    this.calendarTarget.classList.remove('d-none')
  }

  showChart() {
    this.weeklyBtnTarget.setAttribute("disabled", "")
    this.monthlyBtnTarget.removeAttribute("disabled")
    this.chartTarget.classList.remove('d-none')
    this.calendarTarget.classList.add('d-none')
  }
}
