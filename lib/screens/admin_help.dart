import 'package:flutter/material.dart';
import 'package:fleet_management/main.dart';

class AdminHelp extends StatelessWidget {
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
              leading: Icon(Icons.phone),
              title: Text(
              '\bContact info',
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
                leading: Icon(Icons.email),
                title: Text(
                  '\bEmail address',
                  style: textStyle,
                ),
                subtitle: Text(
                  '  aberakebera@gmail.com',
                  style: textStyle,
                  textScaleFactor: 0.8,
                ),
              )),
        ]));
  }
}
