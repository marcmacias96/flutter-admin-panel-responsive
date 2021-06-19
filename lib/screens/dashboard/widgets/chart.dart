import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import '../../../constants.dart';

class Chart extends StatelessWidget {
  const Chart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<PieChartSectionData> pieChartSectionsData = [
      PieChartSectionData(
          color: primaryColor,
          value: 25,
          showTitle: false,
          radius: 25
      ),
      PieChartSectionData(
          color: Colors.red,
          value: 25,
          showTitle: false,
          radius: 19
      ),
      PieChartSectionData(
          color: Colors.green,
          value: 25,
          showTitle: false,
          radius: 16
      ),
      PieChartSectionData(
          color: secondaryColor,
          value: 25,
          showTitle: false,
          radius: 13
      )
    ];
    return Container(
      margin: EdgeInsets.only(top: defaultPadding),
      height: 200,
      child: Stack(
        children: [
          PieChart(
              PieChartData(
                  startDegreeOffset: -90,
                  sectionsSpace: 0,
                  centerSpaceRadius: 70,
                  sections: pieChartSectionsData
              )
          ),
          Positioned.fill(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '29.1',
                  style: Theme.of(context)
                      .textTheme.headline4!.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      height: 0.5
                  ),
                ),
                Text(
                    'of 128GB'
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
