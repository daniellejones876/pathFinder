import { Controller } from "@hotwired/stimulus"
fetch

// Connects to data-controller="profile-chart"
export default class extends Controller {
  connect() {
    const url = window.location.origin + "/graph-data"
    fetch(url, {
      headers: { "Accept": " application/json"}
    })
    .then(response => response.json())
    .then(dataReceived => {
      console.log(dataReceived)
      const monday = dataReceived.data.Mon
      const tuesday = dataReceived.data.Tue
      const wednesday = dataReceived.data.Wed
      const thursday = dataReceived.data.Thu
      const friday = dataReceived.data.Fri
      const saturday = dataReceived.data.Sat
      const sunday = dataReceived.data.Sun

      const showData = {
        labels: ['Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday', 'Sunday'],
        datasets: [{
            data: [monday, tuesday, wednesday, thursday, friday, saturday, sunday],
            backgroundColor: 'rgba(75, 192, 192, 0.2)', // Fill color
            borderColor: 'rgba(75, 192, 192, 1)', // Line color
            borderWidth: 2
        }]
      };

      const options = {
        scales: {
          y: {
            ticks: {
              callback: function (value, index, values) {
                var customTicks = ['😭', '😟', '😐', '🙂', '😁'];
                return customTicks[index];
              },
            },
          },
        },
      };

      // Get the canvas element and create the line chart
      const ctx = document.getElementById('chart').getContext('2d');
      const myLineChart = new Chart(ctx, {
          type: 'line',
          data: showData,
          options: options
      });
      })
  }
}
