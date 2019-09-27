// Set new default font family and font color to mimic Bootstrap's default styling
Chart.defaults.global.defaultFontFamily = 'Nunito', '-apple-system,system-ui,BlinkMacSystemFont,"Segoe UI",Roboto,"Helvetica Neue",Arial,sans-serif';
Chart.defaults.global.defaultFontColor = '#858796';

// Pie Chart Example
var cat1 = 0;
var cat2 = 0;
var cat3 = 0;
var cat4 = 0;
var cat5 = 0;

$.ajax({
	url : "countCategory.dr",
	async : false,
	success : function(result){
		cat1 = result[0];
		cat2 = result[1];
		cat3 = result[2];
		cat4 = result[3];
		cat5 = result[4];
	}
});

var ctx = document.getElementById("myPieChart");
var myPieChart = new Chart(ctx, {
  type: 'doughnut',
  data: {
    labels: ["음악", "영화", "연극", "미술 ", "기타"],
    datasets: [{
      data: [cat1, cat2, cat3, cat4, cat5],
      backgroundColor: ['#8E44AD', '#F39C12', '#FFCD01', '#F39C12', '#FFCD01'],
      hoverBackgroundColor: ['#8E44AD', '#F39C12', '#FFCD01',  '#F39C12', '#FFCD01'],
      hoverBorderColor: "rgba(234, 236, 244, 1)",
    }],
  },
  options: {
    maintainAspectRatio: false,
    tooltips: {
      backgroundColor: "rgb(255,255,255)",
      bodyFontColor: "#858796",
      borderColor: '#dddfeb',
      borderWidth: 1,
      xPadding: 15,
      yPadding: 15,
      displayColors: false,
      caretPadding: 10,
    },
    legend: {
      display: false
    },
    cutoutPercentage: 80,
  },
});
