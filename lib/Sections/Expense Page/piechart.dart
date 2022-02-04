import 'package:flutter/material.dart';
// import 'package:pie_chart/pie_chart.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class PieChart extends StatelessWidget {
  const PieChart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<GraphData> chartData = [
      GraphData(
        'Home',
        25,
        Colors.deepPurpleAccent,
      ),
      GraphData(
        'Food',
        38,
        Colors.amber,
      ),
      GraphData(
        'Rent',
        34,
        Colors.lightBlue,
      ),
      GraphData(
        'Groceries',
        52,
        Colors.redAccent,
      ),
      GraphData(
        'Travel',
        22,
        Colors.teal,
      )
    ];
    return Card(
      margin: EdgeInsets.only(top: 0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: EdgeInsets.only(top: 0),
        child: Container(
          margin: EdgeInsets.only(top: 0),
          height: 300,
          child: SfCircularChart(
            legend: Legend(
              isVisible: true,
              position: LegendPosition.bottom,
              overflowMode: LegendItemOverflowMode.scroll,
            ),
            series: <CircularSeries>[
              // Renders doughnut chart
              DoughnutSeries<GraphData, String>(
                dataSource: chartData,
                pointColorMapper: (GraphData data, _) => data.color,
                xValueMapper: (GraphData data, _) => data.x,
                yValueMapper: (GraphData data, _) => data.y,
                dataLabelSettings: DataLabelSettings(
                  isVisible: true,
                  // labelPosition: ChartDataLabelPosition.outside,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class GraphData {
  GraphData(this.x, this.y, this.color);
  final String x;
  final double y;
  final Color? color;
}
