<div class="container py-4">
  <div class="row">
    <div class="col-md-3 mb-3">
      <div class="card bg-primary text-white h-100">
        <div class="card-body py-5 text-center"><h1><?php echo $total_post_count; ?></h1></div>
        <div class="card-footer d-flex">
          Totla Post
          <span class="ms-auto">
            <i class="bi bi-chevron-right"></i>
          </span>
        </div>
      </div>
    </div>
    <div class="col-md-3 mb-3">
      <div class="card bg-warning text-white h-100">
        <div class="card-body py-5 text-center"><h1><?php echo $total_watch_count; ?></h1></div>
        <div class="card-footer d-flex">
          Total Watch
          <span class="ms-auto">
            <i class="bi bi-chevron-right"></i>
          </span>
        </div>
      </div>
    </div>
    <div class="col-md-3 mb-3">
      <div class="card bg-success text-white h-100">
        <div class="card-body py-5 text-center"><h1><?php echo $total_reach_count; ?></h1></div>
        <div class="card-footer d-flex">
          Total Reach
          <span class="ms-auto">
            <i class="bi bi-chevron-right"></i>
          </span>
        </div>
      </div>
    </div>
    <div class="col-md-3 mb-3">
      <div class="card bg-danger text-white h-100">
        <div class="card-body py-5 text-center"><h1><?php echo $total_visitor_count; ?></h1></div>
        <div class="card-footer d-flex">
          Total Visitor
          <span class="ms-auto">
            <i class="bi bi-chevron-right"></i>
          </span>
        </div>
      </div>
    </div>
  </div>
</div>
<div class="container py-4">
  <div id="myChart" class="row">
  </div>
</div>
<script>
google.charts.load('current', {'packages':['corechart']});
google.charts.setOnLoadCallback(drawChart);

function drawChart() {
var data = google.visualization.arrayToDataTable([
  ['Site Popularity', 'Count'],
  ['Total Post', <?php echo $total_post_count; ?>],
  ['Total Watch', <?php echo $total_watch_count; ?>],
  ['Total Reach', <?php echo $total_reach_count; ?>],
  ['Total visitor', <?php echo $total_visitor_count; ?>]
]);

var options = {
  title:'Reach'
};

var chart = new google.visualization.BarChart(document.getElementById('myChart'));
  chart.draw(data, options);
}
</script>
