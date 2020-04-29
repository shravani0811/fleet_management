import 'package:flutter/material.dart';

class Alerts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var _minimumpadding = 5.0;
    TextStyle textStyle = Theme.of(context).textTheme.title;
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Alerts',
            style: textStyle,
          ),
        ),
        body: ListView(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(_minimumpadding),
              child: Card(
                  child: Padding(
                padding: EdgeInsets.all(_minimumpadding * 2),
                child: ListTile(
                  leading: Icon(
                    Icons.build,
                    color: Theme.of(context).primaryColorLight,
                  ),
                  title: Text(
                    'Fleet no: 34221',
                    style: textStyle,
                  ),
                  subtitle: Text(
                    '  Start point: Bangalore\n  End point: Mumbai\n  Broken clutch plates',
                    textScaleFactor: 0.8,
                    style: textStyle,
                  ),
                ),
              )),
            ),

            Padding(
              padding: EdgeInsets.all(_minimumpadding),
              child: Card(
                  child: Padding(
                    padding: EdgeInsets.all(_minimumpadding * 2),
                    child: ListTile(
                      leading: Icon(
                        Icons.build,
                        color: Theme.of(context).primaryColorLight,
                      ),
                      title: Text(
                        'Fleet no: 34221',
                        style: textStyle,
                      ),
                      subtitle: Text(
                        '  Start point: Bangalore\n  End point: Mumbai\n  Broken clutch plates',
                        textScaleFactor: 0.8,
                        style: textStyle,
                      ),
                    ),
                  )),
            ),

            Padding(
              padding: EdgeInsets.all(_minimumpadding),
              child: Card(
                  child: Padding(
                    padding: EdgeInsets.all(_minimumpadding * 2),
                    child: ListTile(
                      leading: Icon(
                        Icons.build,
                        color: Theme.of(context).primaryColorLight,
                      ),
                      title: Text(
                        'Fleet no: 34221',
                        style: textStyle,
                      ),
                      subtitle: Text(
                        '  Start point: Bangalore\n  End point: Mumbai\n  Broken clutch plates',
                        textScaleFactor: 0.8,
                        style: textStyle,
                      ),
                    ),
                  )),
            ),

            Padding(
              padding: EdgeInsets.all(_minimumpadding),
              child: Card(
                  child: Padding(
                    padding: EdgeInsets.all(_minimumpadding * 2),
                    child: ListTile(
                      leading: Icon(
                        Icons.build,
                        color: Theme.of(context).primaryColorLight,
                      ),
                      title: Text(
                        'Fleet no: 34221',
                        style: textStyle,
                      ),
                      subtitle: Text(
                        '  Start point: Bangalore\n  End point: Mumbai\n  Broken clutch plates',
                        textScaleFactor: 0.8,
                        style: textStyle,
                      ),
                    ),
                  )),
            ),

            Padding(
              padding: EdgeInsets.all(_minimumpadding),
              child: Card(
                  child: Padding(
                    padding: EdgeInsets.all(_minimumpadding * 2),
                    child: ListTile(
                      leading: Icon(
                        Icons.build,
                        color: Theme.of(context).primaryColorLight,
                      ),
                      title: Text(
                        'Fleet no: 34221',
                        style: textStyle,
                      ),
                      subtitle: Text(
                        '  Start point: Bangalore\n  End point: Mumbai\n  Broken clutch plates',
                        textScaleFactor: 0.8,
                        style: textStyle,
                      ),
                    ),
                  )),
            ),


          ],
        ));
  }
}
