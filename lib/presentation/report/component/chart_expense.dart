import 'package:flutter/material.dart';
import 'package:pos/presentation/core/widget_color.dart';
import 'package:pos/presentation/core/widget_size.dart';
import 'package:pos/presentation/report/component/chart_data.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class ChartExpense extends StatelessWidget {
  const ChartExpense({
    Key key,
    @required List<ChartData> chartData,
  })  : _chartData = chartData,
        super(key: key);

  final List<ChartData> _chartData;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: sChart,
      child: SfCircularChart(
        borderColor: kSecondColor,
        palette: [
          kUIPrimaryColor,
          kTextSecondColor,
        ],
        series: <CircularSeries>[
          DoughnutSeries<ChartData, String>(
            dataSource: _chartData,
            xValueMapper: (ChartData data, _) => data.x,
            yValueMapper: (ChartData data, _) => data.y,
            dataLabelMapper: (ChartData data, _) => data.text,
            enableTooltip: true,
            dataLabelSettings: DataLabelSettings(
              isVisible: true,
              labelPosition: ChartDataLabelPosition.inside,
              useSeriesColor: true,
              showZeroValue: false,
            ),
          ),
        ],
      ),
    );
  }
}
