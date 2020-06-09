import 'package:covid19/widgets/cases.dart';
import 'package:covid19/widgets/hospitals.dart';
import 'package:covid19/widgets/prevention.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class DashboardScreen extends StatefulWidget {
  static String id = "/dashboard";

  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          elevation: 4.0,
          leading: Image.asset('assets/icons/menu.png'),
          actions: <Widget>[
            IconButton(
              icon: Image.asset('assets/icons/notifications.png'),
              onPressed: () {},
            ),
          ],
          bottom: TabBar(
            indicatorWeight: 1.0,
            indicatorColor: Hexcolor('#665EFF'),
            labelPadding: EdgeInsets.symmetric(vertical: 0),
            tabs: <Widget>[
              Container(
                width: double.infinity,
                height: 40.0,
                decoration: BoxDecoration(
                  border: Border(
                    top: BorderSide(
                      width: .2,
                      color: Hexcolor('#707070').withOpacity(.2),
                    ),
                    right: BorderSide(
                      width: .2,
                      color: Hexcolor('#707070').withOpacity(.2),
                    ),
                  ),
                ),
                child: Center(
                  child: Text(
                    'Cases',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Hexcolor('#3C4954'),
                      fontSize: 15.0,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                height: 40.0,
                decoration: BoxDecoration(
                  border: Border(
                    top: BorderSide(
                      width: .2,
                      color: Hexcolor('#707070').withOpacity(.2),
                    ),
                    right: BorderSide(
                      width: .2,
                      color: Hexcolor('#707070').withOpacity(.2),
                    ),
                  ),
                ),
                child: Center(
                  child: Text(
                    'Prevention',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Hexcolor('#3C4954'),
                      fontSize: 15.0,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                height: 40.0,
                decoration: BoxDecoration(
                  border: Border(
                    top: BorderSide(
                      width: .2,
                      color: Hexcolor('#707070').withOpacity(.2),
                    ),
                    right: BorderSide(
                      width: .2,
                      color: Hexcolor('#707070').withOpacity(.2),
                    ),
                  ),
                ),
                child: Center(
                  child: Text(
                    'Hospitals',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Hexcolor('#3C4954'),
                      fontSize: 15.0,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        body: TabBarView(
          physics: NeverScrollableScrollPhysics(),
          children: [
            Cases(),
            Prevention(),
            Hospitals(),
          ],
        ),
      ),
    );
  }
}
