import 'package:covid19/widgets/legend.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:pie_chart/pie_chart.dart';

Map<String, double> dataMap = {
  "Active Cases": 6000,
  "Discharge": 2500,
  "Deaths": 2755,
};

class Cases extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // double total = dataMap.values.reduce((value, element) => value + element);
    return SingleChildScrollView(
      child: Container(
        margin: EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Card(
              elevation: 10,
              shadowColor: Hexcolor('#455B63').withOpacity(.2),
              child: Container(
                margin: EdgeInsets.all(16.0),
                padding: EdgeInsets.all(16.0),
                width: double.infinity,
                child: Stack(
                  children: [
                    PieChart(
                      dataMap: dataMap,
                      chartRadius: MediaQuery.of(context).size.width / 1.8,
                      showChartValuesOutside: false,
                      showLegends: false,
                      showChartValues: false,
                    ),
                    // Text(total.toString()),
                  ],
                ),
              ),
            ),
            Card(
              elevation: 10,
              shadowColor: Hexcolor('#455B63').withOpacity(.2),
              child: Container(
                margin: EdgeInsets.all(16.0),
                width: double.infinity,
                child: Column(
                  children: dataMap.keys
                      .toList()
                      .map(
                        (String value) => Legend(
                          value: value,
                          dataMap: dataMap,
                        ),
                      )
                      .toList(),
                ),
              ),
            ),
            Card(
              elevation: 10,
              shadowColor: Hexcolor('#455B63').withOpacity(.2),
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 32.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Text('9000'),
                        Text('Male'),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Text('55'),
                        Text('Female'),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Text('200'),
                        Text('Children'),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
