// Set new default font family and font color to mimic Bootstrap's default styling
		Chart.defaults.global.defaultFontFamily = 'Nunito',
		'-apple-system,system-ui,BlinkMacSystemFont,"Segoe UI",Roboto,"Helvetica Neue",Arial,sans-serif';
Chart.defaults.global.defaultFontColor = '#858796';

$(function() {
	day7 = 0;
	day6 = 0;
	day5 = 0;
	day4 = 0;
	day3 = 0;
	day2 = 0;
	day1 = 0;
	today = 0;

	countdate();
	chart();
	// 하루 전 ~ 7일 전
	// Area Chart Example
	function chart() {

		var ctx = document.getElementById("myAreaChart");
		var myLineChart = new Chart(ctx, {
			type : 'line',
			data : {
				labels : [ "7일 전", "6일 전", "5일 전", "4일 전", "3일 전", "2일 전",
						"1일 전", "오늘" ],
				datasets : [ {
					label : "방문자 수",
					lineTension : 0.3,
					backgroundColor : "rgba(78, 115, 223, 0.05)",
					borderColor : "rgba(78, 115, 223, 1)",
					pointRadius : 3,
					pointBackgroundColor : "rgba(78, 115, 223, 1)",
					pointBorderColor : "rgba(78, 115, 223, 1)",
					pointHoverRadius : 3,
					pointHoverBackgroundColor : "rgba(78, 115, 223, 1)",
					pointHoverBorderColor : "rgba(78, 115, 223, 1)",
					pointHitRadius : 10,
					pointBorderWidth : 2,
					fill : false,
					data : [ 1, 3, day5, day4, day3, day2, day1, today ],
				} ],
			},
			options : {
				maintainAspectRatio : false,
				layout : {
					padding : {
						left : 10,
						right : 25,
						top : 25,
						bottom : 0
					}
				},
				scales : {
					xAxes : [ {
						time : {
							unit : 'date'
						},
						gridLines : {
							display : false,
							drawBorder : false
						},
						ticks : {
							maxTicksLimit : 7
						}
					} ],
				},
				legend : {
					display : false
				},
				tooltips : {
					backgroundColor : "rgb(255,255,255)",
					bodyFontColor : "#858796",
					titleMarginBottom : 10,
					titleFontColor : '#6e707e',
					titleFontSize : 14,
					borderColor : '#dddfeb',
					borderWidth : 1,
					xPadding : 15,
					yPadding : 15,
					displayColors : false,
					intersect : false,
					mode : 'index',
					caretPadding : 10
				}
			}
		});
	}

	function countdate() {
		$.ajax({
			url : "countVisit.dr",
			async : false,
			success : function(result) {
				day1 = result[0];
				day2 = result[1];
				day3 = result[2];
				day4 = result[3];
				day5 = result[4];
				day6 = result[5];
				day7 = result[6];
			}
		});

		// 오늘
		$.ajax({
			url : "countToday.dr",
			async : false,
			success : function(result) {
				today = result;
			}
		});
		
		console.log(day1)
		console.log(day2)
		console.log(day3)
		console.log(day4)
		console.log(day5)
		console.log(day6)
		console.log(day7)
		
	}
});