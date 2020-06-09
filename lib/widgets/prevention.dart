import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class Prevention extends StatelessWidget {
  const Prevention({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        margin: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Card(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 25.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            Image.asset('assets/icons/sanitizer.png'),
                            Text('Use Sanitizer')
                          ],
                        ),
                        Column(
                          children: <Widget>[
                            Image.asset('assets/icons/isolated.png'),
                            Text('Stay Isolated')
                          ],
                        ),
                        Column(
                          children: <Widget>[
                            Image.asset('assets/icons/mask.png'),
                            Text('Wear Mask')
                          ],
                        ),
                      ],
                    ),
                    Divider(height: 40, color: Hexcolor('#F4F4F6')),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            Image.asset('assets/icons/distance.png'),
                            Text('Maintain Distance')
                          ],
                        ),
                        Column(
                          children: <Widget>[
                            Image.asset('assets/icons/checkup.png'),
                            Text('Health Checkup')
                          ],
                        ),
                        Column(
                          children: <Widget>[
                            Image.asset('assets/icons/rules.png'),
                            Text('Follow Govt Rules')
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              'Symptoms',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.w500,
                color: Hexcolor('#78849E'),
              ),
            ),
            SizedBox(height: 10.0),
            Card(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 25.0),
                child: Row(
                  children: <Widget>[
                    Image.asset('assets/icons/dry_cough.png'),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Dry cough',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(height: 5.0),
                          Text(
                            'The cough to look out for is a new, continuous cough. This means coughing a lot for more than an hour, or having three or more coughing episodes in 24 hours. If you usually have a cough, it may be worse than usual.',
                            maxLines: 4,
                            style: TextStyle(
                              fontSize: 14.0,
                              color: Hexcolor('#78849E'),
                              letterSpacing: 1.0,
                            ),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Card(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 25.0),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Fever',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(height: 5.0),
                          Text(
                            'The cough to look out for is a new, continuous cough. This means coughing a lot for more than an hour, or having three or more coughing episodes in 24 hours. If you usually have a cough, it may be worse than usual.',
                            maxLines: 4,
                            style: TextStyle(
                              fontSize: 14.0,
                              color: Hexcolor('#78849E'),
                              letterSpacing: 1.0,
                            ),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    ),
                    Image.asset('assets/icons/fever.png'),
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
