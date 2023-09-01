import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="profile-chart"
export default class extends Controller {
  connect() {
  }
}


<div class="container">

  <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/4.4.0/chart.js" integrity="sha512-6LKCH7i2+zMNczKuCT9ciXgFCKFp3MevWTZUXDlk7azIYZ2wF5LRsrwZqO7Flt00enUI+HwzzT5uhOvy6MNPiA==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>

  <div style="width: 900px; height: 400px;">
    <canvas id="myChart"></canvas>
  </div>

  <script>

    let labels = ['Mon', 'Tue', 'Wed', 'Thu', "Fri", 'Sat', 'Sun'];

    let itemData = [1, 2, 3, 4, 5, 6, 7];

    const data = {
      labels: labels,
      datasets: [{
        data: itemData,
        backgroundColor: 'rgb(180, 154, 204)'
      }]
    };
    const config = {
      type: 'line',
      data: data
    };
    const chart = new Chart(
      document.getElementById('myChart'),
      config
    );
  </script>
</div>
