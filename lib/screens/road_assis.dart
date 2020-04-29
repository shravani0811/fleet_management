import 'package:flutter/material.dart';
import 'package:fleet_management/main.dart';

class RoadAssis extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var _minimumpadding = 5.0;
    TextStyle textStyle = Theme.of(context).textTheme.title;
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text('Admin Help'),
        ),
        body: ListView(children: <Widget>[
          Padding(
              padding: EdgeInsets.only(top: _minimumpadding*3,right: _minimumpadding, left:_minimumpadding, bottom: _minimumpadding),
              child:ListTile(
                leading: Icon(Icons.add_alert),
                title: Text(
                  '\b Emergency Contact info',
                  style: textStyle,
                ),
                subtitle: Text(
                  '  9902983366',
                  style: textStyle,
                  textScaleFactor: 0.8,
                ),
              )),

          Padding(
              padding: EdgeInsets.only(top: _minimumpadding*3,right: _minimumpadding, left:_minimumpadding, bottom: _minimumpadding),
              child:ListTile(
                leading: Icon(Icons.phone),
                title: Text(
                  '\bFleet care no.',
                  style: textStyle,
                ),
                subtitle: Text(
                  '  180098765123',
                  style: textStyle,
                  textScaleFactor: 0.8,
                ),
              )),

          Padding(
              padding: EdgeInsets.only(top: _minimumpadding*3,right: _minimumpadding, left:_minimumpadding, bottom: _minimumpadding),
              child:ListTile(
                leading: Icon(Icons.add_location),
                title: Text(
                  '\bFleet Tracking no.',
                  style: textStyle,
                ),
                subtitle: Text(
                  '  180098764444',
                  style: textStyle,
                  textScaleFactor: 0.8,
                ),
              )),

          Padding(
              padding: EdgeInsets.only(top: _minimumpadding*3,right: _minimumpadding, left:_minimumpadding, bottom: _minimumpadding),
              child:ListTile(
                leading: Icon(Icons.phone),
                title: Text(
                  '\bFleet Service center no.',
                  style: textStyle,
                ),
                subtitle: Text(
                  '  180011181234',
                  style: textStyle,
                  textScaleFactor: 0.8,
                ),
              )),

          Padding(
              padding: EdgeInsets.only(top: _minimumpadding*3,right: _minimumpadding, left:_minimumpadding, bottom: _minimumpadding),
              child:ListTile(
                leading: Icon(Icons.healing),
                title: Text(
                  '\bEmergency healthcare',
                  style: textStyle,
                ),
                subtitle: Text(
                  '  180',
                  style: textStyle,
                  textScaleFactor: 0.8,
                ),
              )),

        ]));
  }
}
