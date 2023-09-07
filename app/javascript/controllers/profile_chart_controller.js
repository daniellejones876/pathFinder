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
        labels: ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun'],
        datasets: [{
            data: [monday, tuesday, wednesday, thursday, friday, saturday, sunday],
            backgroundColor: 'rgb(166, 171, 218)',
            borderColor: 'rgb(181, 155, 205)',
            borderWidth: 2
        }]
      };

      const options = {
        plugins: {
          legend: {
            display:false
          },
        },
        scales: {
          x: {
            grid: {
              display: false,
            },
          },
          y: {
            grid: {
              display: false,
            },
            ticks: {
              stepSize: 1,
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
