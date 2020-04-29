import 'package:flutter/material.dart';
import 'package:fleet_management/screens/view_admins.dart';
import 'package:fleet_management/screens/signin.dart';
import 'package:fleet_management/screens/add_admin.dart';
import 'package:fleet_management/screens/view_users.dart';
import 'package:fleet_management/screens/vehicle_detail.dart';
import 'package:fleet_management/screens/active_bookings.dart';
import 'package:fleet_management/screens/admin_help.dart';
import 'package:fleet_management/screens/road_assis.dart';
import 'package:fleet_management/screens/driver_details.dart';
import 'package:fleet_management/screens/spare_parts.dart';

class SpareParts extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _SparePartsState();
  }
}

class _SparePartsState extends State<SpareParts> {
  final _minimumPadding = 5.0;

  void initState() {
    super.initState();
  }

  @override //build
  Widget build(BuildContext context) {
    TextStyle textStyle = Theme.of(context).textTheme.title;
    // TODO: implement build
    return Scaffold(
//      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Container(
        margin: EdgeInsets.all(_minimumPadding * 2),
        child: ListView(
          children: <Widget>[
            Card(
                elevation: 2.0,
                child: Padding(
                  padding: EdgeInsets.all(_minimumPadding*2),
                  child: ListTile(
                      leading: CircleAvatar(
                        foregroundColor: Colors.white,
                        backgroundColor: Colors.red,
                        child: Icon(Icons.announcement),
                      ),
                      title: Text(
                        'Stepny',
                        style: textStyle,
                      ),
                      subtitle: Text(
                        ' Trucks: 48\n SUVs: 32\n Tempos: 63',
                        style: textStyle,
                        textScaleFactor: 0.75,
                      ),
                      trailing: SizedBox(
                        width: 80.0,
                        height: 40.0,
                        child: RaisedButton(
                            color: Theme.of(context).primaryColor,
                            textColor: Colors.white,
                            child: Text('Order'),
                            onPressed: () {
                              debugPrint('order placer');
                            }),
                      )),
                )),

            Card(
                elevation: 2.0,
                child: Padding(
                  padding: EdgeInsets.all(_minimumPadding*2),
                  child: ListTile(
                      leading: CircleAvatar(
                        foregroundColor: Colors.white,
                        backgroundColor: Colors.red,
                        child: Icon(Icons.announcement),
                      ),
                      title: Text(
                        'Cariage belts',
                        style: textStyle,
                      ),
                      subtitle: Text(
                        ' Trucks: 38\n SUVs: 12\n Tempos: 3',
                        style: textStyle,
                        textScaleFactor: 0.75,
                      ),
                      trailing: SizedBox(
                        width: 80.0,
                        height: 40.0,
                        child: RaisedButton(
                            color: Theme.of(context).primaryColor,
                            textColor: Colors.white,
                            child: Text('Order'),
                            onPressed: () {
                              debugPrint('order placer');
                            }),
                      )),
                )),

            Card(
                elevation: 2.0,
                child: Padding(
                  padding: EdgeInsets.all(_minimumPadding*2),
                  child: ListTile(
                      leading: CircleAvatar(
                        foregroundColor: Colors.white,
                        backgroundColor: Colors.yellow,
                        child: Icon(Icons.thumb_up),
                      ),
                      title: Text(
                        'Breaklines',
                        style: textStyle,
                      ),
                      subtitle: Text(
                        ' Trucks: 118\n SUVs: 102\n Tempos: 223',
                        style: textStyle,
                        textScaleFactor: 0.75,
                      ),
                  ),
                )),

            Card(
                elevation: 2.0,
                child: Padding(
                  padding: EdgeInsets.all(_minimumPadding*2),
                  child: ListTile(
                      leading: CircleAvatar(
                        foregroundColor: Colors.white,
                        backgroundColor: Colors.yellow,
                        child: Icon(Icons.thumb_up),
                      ),
                      title: Text(
                        'GearBox',
                        style: textStyle,
                      ),
                      subtitle: Text(
                        ' Trucks: 228\n SUVs: 112\n Tempos: 103',
                        style: textStyle,
                        textScaleFactor: 0.75,
                      ),
                  ),
                )),

            Card(
                elevation: 2.0,
                child: Padding(
                  padding: EdgeInsets.all(_minimumPadding*2),
                  child: ListTile(
                    leading: CircleAvatar(
                      foregroundColor: Colors.white,
                      backgroundColor: Colors.yellow,
                      child: Icon(Icons.thumb_up),
                    ),
                    title: Text(
                      'Breaklines',
                      style: textStyle,
                    ),
                    subtitle: Text(
                      ' Trucks: 118\n SUVs: 102\n Tempos: 223',
                      style: textStyle,
                      textScaleFactor: 0.75,
                    ),
                  ),
                )),

            Card(
                elevation: 2.0,
                child: Padding(
                  padding: EdgeInsets.all(_minimumPadding*2),
                  child: ListTile(
                    leading: CircleAvatar(
                      foregroundColor: Colors.white,
                      backgroundColor: Colors.yellow,
                      child: Icon(Icons.thumb_up),
                    ),
                    title: Text(
                      'GearBox',
                      style: textStyle,
                    ),
                    subtitle: Text(
                      ' Trucks: 228\n SUVs: 112\n Tempos: 103',
                      style: textStyle,
                      textScaleFactor: 0.75,
                    ),
                  ),
                )),

            Card(
                elevation: 2.0,
                child: Padding(
                  padding: EdgeInsets.all(_minimumPadding*2),
                  child: ListTile(
                    leading: CircleAvatar(
                      foregroundColor: Colors.white,
                      backgroundColor: Colors.yellow,
                      child: Icon(Icons.thumb_up),
                    ),
                    title: Text(
                      'Breaklines',
                      style: textStyle,
                    ),
                    subtitle: Text(
                      ' Trucks: 118\n SUVs: 102\n Tempos: 223',
                      style: textStyle,
                      textScaleFactor: 0.75,
                    ),
                  ),
                )),

            Card(
                elevation: 2.0,
                child: Padding(
                  padding: EdgeInsets.all(_minimumPadding*2),
                  child: ListTile(
                    leading: CircleAvatar(
                      foregroundColor: Colors.white,
                      backgroundColor: Colors.yellow,
                      child: Icon(Icons.thumb_up),
                    ),
                    title: Text(
                      'GearBox',
                      style: textStyle,
                    ),
                    subtitle: Text(
                      ' Trucks: 228\n SUVs: 112\n Tempos: 103',
                      style: textStyle,
                      textScaleFactor: 0.75,
                    ),
                  ),
                )),


          ],
        ),
      ),
    );
  }
}
