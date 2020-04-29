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
import 'package:fleet_management/screens/alerts.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Fleet Management',
    home: SigninForm(),
    theme: ThemeData(
      brightness: Brightness.dark,
      primaryColor: Colors.indigo,
      accentColor: Colors.indigo,
    ),
  ));
}

class SIForm extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _SIFormState();
  }
}

class _SIFormState extends State<SIForm> {
  final _minimumPadding = 5.0;

  void initState() {
    super.initState();
  }

  @override //build
  Widget build(BuildContext context) {
    TextStyle textStyle = Theme
        .of(context)
        .textTheme
        .title;
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
            Padding(
                padding: EdgeInsets.all(_minimumPadding),
                child: Card(
                    elevation: 2.0,
                    child: ListTile(
                      title: Text(
                        'View Admins',
                        style: textStyle,
                      ),
                      trailing: IconButton(
                        icon: Icon(Icons.arrow_right),
                        onPressed: () {
                          debugPrint("button clicked");
                          return navigate_viewadmin();
                        },
                      ),
                    ))),
            Padding(
                padding: EdgeInsets.all(_minimumPadding),
                child: Card(
                    elevation: 2.0,
                    child: ListTile(
                      title: Text(
                        'View Users',
                        style: textStyle,
                      ),
                      trailing: IconButton(
                        icon: Icon(Icons.arrow_right),
                        onPressed: () {
                          debugPrint("button clicked");
                          return navigate_viewuser();
                        },
                      ),
                    ))),
            Padding(
                padding: EdgeInsets.all(_minimumPadding),
                child: Card(
                    elevation: 2.0,
                    child: ListTile(
                      title: Text(
                        'View active bookings',
                        style: textStyle,
                      ),
                      trailing: IconButton(
                        icon: Icon(Icons.arrow_right),
                        onPressed: () {
                          debugPrint("button clicked");
                        },
                      ),
                    ))),
            Padding(
                padding: EdgeInsets.all(_minimumPadding),
                child: Card(
                    elevation: 2.0,
                    child: ListTile(
                      title: Text(
                        'Spare parts availability',
                        style: textStyle,
                      ),
                      trailing: IconButton(
                        icon: Icon(Icons.arrow_right),
                        onPressed: () {
                          debugPrint("button clicked");
                          return navigate_SpareParts();
                        },
                      ),
                    ))),
            Padding(
                padding: EdgeInsets.all(_minimumPadding),
                child: Card(
                    elevation: 2.0,
                    child: ListTile(
                      title: Text(
                        'Vehicle details',
                        style: textStyle,
                      ),
                      trailing: IconButton(
                        icon: Icon(Icons.arrow_right),
                        onPressed: () {
                          debugPrint("button clicked");
                        },
                      ),
                    ))),
            Padding(
                padding: EdgeInsets.all(_minimumPadding),
                child: Card(
                    elevation: 2.0,
                    child: ListTile(
                      title: Text(
                        'driver details',
                        style: textStyle,
                      ),
                      trailing: IconButton(
                        icon: Icon(Icons.arrow_right),
                        onPressed: () {
                          debugPrint("button clicked");
                          navigate_DriverTable();
                        },
                      ),
                    ))),
            Padding(
                padding: EdgeInsets.all(_minimumPadding),
                child: Card(
                    elevation: 2.0,
                    child: ListTile(
                      title: Text(
                        'Roadside assistance',
                        style: textStyle,
                      ),
                      trailing: IconButton(
                        icon: Icon(Icons.arrow_right),
                        onPressed: () {
                          debugPrint("button clicked");
                          return navigate_RoadAissis();
                        },
                      ),
                    ))),
            Padding(
                padding: EdgeInsets.all(_minimumPadding),
                child: Card(
                    elevation: 2.0,
                    child: ListTile(
                      title: Text(
                        'Admin help',
                        style: textStyle,
                      ),
                      trailing: IconButton(
                        icon: Icon(Icons.arrow_right),
                        onPressed: () {
                          debugPrint("button clicked");
                          return navigate_AdminHelp();
                        },
                      ),
                    ))),
            Padding(
                padding: EdgeInsets.all(_minimumPadding),
                child: Card(
                    elevation: 2.0,
                    child: ListTile(
                      title: Text(
                        'Track fleet',
                        style: textStyle,
                      ),
                      trailing: IconButton(
                        icon: Icon(Icons.arrow_right),
                        onPressed: () {
                          debugPrint("button clicked");
                        },
                      ),
                    ))),
            Padding(
                padding: EdgeInsets.only(top: _minimumPadding * 5),
                child: FloatingActionButton(
                  tooltip: "Show alert",
                  child: Icon(Icons.add_alert),
                  onPressed: () {
                    debugPrint("ALERT!");
                    return navigate_Alerts();
                  },
                )),
          ],
        ),
      ),
    );
  }

  void navigate_viewadmin() {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return BasicTable();
    }));
  }

  void navigate_viewuser(){
    Navigator.push(context, MaterialPageRoute(builder: (context){
      return UserTable();
    }));
  }
  void navigate_SpareParts(){
    Navigator.push(context, MaterialPageRoute(builder: (context){
      return SpareParts();
    }));
  }

  void navigate_AdminHelp(){
    Navigator.push(context, MaterialPageRoute(builder: (context){
      return AdminHelp();
    }));
  }

  void navigate_DriverTable(){
    Navigator.push(context, MaterialPageRoute(builder: (context){
      return DriverTable();
    }));
  }

  void navigate_RoadAissis(){
    Navigator.push(context, MaterialPageRoute(builder: (context){
      return RoadAssis();
    }));
  }

  void navigate_Alerts(){
    Navigator.push(context, MaterialPageRoute(builder: (context){
      return Alerts();
    }));
  }
}
