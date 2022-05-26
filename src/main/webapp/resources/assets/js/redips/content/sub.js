var param = [ {
	name : 'packageId',
	value : $('#packageId').val()
} ];

$.ajax({
	type : "GET",
	url : "/getPackagePriceChartInfo",
	data : param,
	cache : false,
	async : false,
	success : function(data) {
		
		var chart = AmCharts.makeChart("chartdiv", {
			"type" : "serial",
			"theme" : "light",
			"marginRight" : 20,
			"autoMarginOffset" : 20,
			"dataDateFormat" : "YYYY-MM-DD",
			"valueAxes" : [ {
				"id" : "v1",
				"axisAlpha" : 0,
				"position" : "left",
				"labelFunction" : function formatValue(value, formattedValue, valueAxis){
				    return value.toLocaleString() + "원";
				}
			} ],
			"balloon" : {
				"borderThickness" : 1,
				"shadowAlpha" : 0
			},
			"graphs" : [ {
				"id" : "g1",
				"bullet" : "round",
				"bulletBorderAlpha" : 1,
				"bulletColor" : "#FFFFFF",
				"bulletSize" : 5,
				"hideBulletsCount" : 50,
				"lineThickness" : 2,
				"title" : "krw price",
				"useLineColorForBulletBorder" : true,
				"valueField" : "krw",
				"balloonText" : "<div style='margin:5px; font-size:19px;'><span style='font-size:13px;'>[[category]]</span><br>[[value]]원</div>"	
			} ],
			"chartScrollbar" : {
				"graph" : "g1",
				"scrollbarHeight" : 40,
				"backgroundAlpha" : 0,
				"selectedBackgroundAlpha" : 0.1,
				"selectedBackgroundColor" : "#888888",
				"graphFillAlpha" : 0,
				"graphLineAlpha" : 0.5,
				"selectedGraphFillAlpha" : 0,
				"selectedGraphLineAlpha" : 1,
				"autoGridCount" : true,
				"color" : "#AAAAAA"
			},
			"chartCursor" : {
				"pan" : true,
				"valueLineEnabled" : true,
				"valueLineBalloonEnabled" : true,
				"cursorAlpha" : 0,
				"valueLineAlpha" : 0.2
			},
			"categoryField" : "dateField",
			"categoryAxis" : {
				"parseDates" : true,
				"equalSpacing" : true,
				"dashLength" : 1,
				"minorGridEnabled" : true,
				"position" : "top"
			},
			"export" : {
				"enabled" : true
			},
			"dataProvider" : data
		});

		if ( 0 == chart.dataProvider.length ) {
	        // set min/max on the value axis
	        chart.valueAxes[0].minimum = 0;
	        chart.valueAxes[0].maximum = 100;
	        
	        // add dummy data point
	        var dataPoint = {
	            dummyValue: 0
	        };
	        dataPoint[chart.categoryField] = '';
	        chart.dataProvider = [dataPoint];
	        
	        // add label
	        chart.addLabel(0, '50%', '가격 정보가 존재하지 않습니다.', 'center');
	        
	        // set opacity of the chart div
	        chart.chartDiv.style.opacity = 0.5;
	        
	        // redraw it
	        chart.validateNow();
	    }
		
		chart.addListener("rendered", zoomChart);
		chart.zoomToIndexes(chart.dataProvider.length - 40, chart.dataProvider.length - 1);
		
	},
	error : function() {

	}
});
