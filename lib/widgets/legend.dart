import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class Legend extends StatelessWidget {
  final String value;
  final Map dataMap;

  Legend({@required this.value, @required this.dataMap});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    width: 10.0,
                    height: 10.0,
                    color: Colors.yellow,
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  Text(
                    value,
                    style: TextStyle(
                      color: Hexcolor('#3C4954'),
                      fontWeight: FontWeight.w600,
                      fontSize: 16.0,
                    ),
                  ),
                ],
              ),
              Text(dataMap[value].toString()),
            ],
          ),
        ),
        Divider()
      ],
    );
  }
}
