import 'package:flutter/material.dart';
import 'package:fleet_management/screens/signin.dart';
import 'package:fleet_management/main.dart';
import 'package:fleet_management/screens/add_admin.dart';
class BasicTable extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _BasicTableState();
  }
}

class _BasicTableState extends State<BasicTable> {
  final _minimumPadding = 5.0;

  void initState() {
    super.initState();
  }

  @override //build
  Widget build(BuildContext context) {
    TextStyle textStyle = Theme.of(context).textTheme.title;
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('View Admins'),
      ),
      body: Table(
        defaultColumnWidth: FixedColumnWidth(150.0),
        border: TableBorder(
          horizontalInside: BorderSide(
            color: Colors.black,
            width: 1.0,
          ),
          verticalInside: BorderSide(
            color: Colors.black,
            width: 1.0,
          ),
        ),
        children: [
          _buildTableRow("NAME,ADMIN ID,DEPT"),
          _buildTableRow("Nairobi,12345A,Fleet"),
          _buildTableRow("Tokyo,10992B,Tracking"),
          _buildTableRow("Denver,10092A,Invetory"),
          _buildTableRow("Nairobi,12345A,Fleet"),
          _buildTableRow("Tokyo,10992B,Tracking"),
          _buildTableRow("Denver,10092A,Invetory"),
          _buildTableRow("Nairobi,12345A,Fleet"),
          _buildTableRow("Tokyo,10992B,Tracking"),
          _buildTableRow("Denver,10092A,Invetory"),
          _buildTableRow("Nairobi,12345A,Fleet"),
          _buildTableRow("Tokyo,10992B,Tracking"),
          _buildTableRow("Denver,10092A,Invetory"),
          _buildTableRow("Nairobi,12345A,Fleet"),
          _buildTableRow("Tokyo,10992B,Tracking"),
          _buildTableRow("Denver,10092A,Invetory"),
          _buildTableRow("Nairobi,12345A,Fleet"),
          _buildTableRow("Tokyo,10992B,Tracking"),
          _buildTableRow("Denver,10092A,Invetory"),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
//          debugPrint('Add Admin');
          return navigateaddadmin();
        },
        tooltip: 'Add Admin',

        child: Icon(Icons.add),
      ),
    );
  }

  TableRow _buildTableRow(String listOfNames) {
    return TableRow(
      children: listOfNames.split(',').map((name) {
        return Container(
          alignment: Alignment.center,
          child: Text(name, style: TextStyle(fontSize: 17.0)),
          padding: EdgeInsets.all(_minimumPadding*2),
        );
      }).toList(),
    );
  }
  void navigateaddadmin(){
    Navigator.push(context, MaterialPageRoute(builder: (context){
      return AddAdmin();
    }));
  }
}
