import 'package:flutter/material.dart';
import 'package:fleet_management/screens/signin.dart';
import 'package:fleet_management/main.dart';
import 'package:fleet_management/screens/add_driver.dart';

class DriverTable extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return DriverTableState();
  }
}

class DriverTableState extends State<DriverTable> {
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
        title: Text('View Drivers'),
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
          _buildTableRow("NAME,PHONE,RATING"),
          _buildTableRow("Lara,99876542,4"),
          _buildTableRow("Peter,998975542,5"),
          _buildTableRow("Ambrose,88766542,4.3"),
          _buildTableRow("Lara,99876542,4"),
          _buildTableRow("Peter,998975542,5"),
          _buildTableRow("Ambrose,88766542,4.3"),_buildTableRow("Lara,99876542,4"),
          _buildTableRow("Peter,998975542,5"),
          _buildTableRow("Ambrose,88766542,4.3"),_buildTableRow("Lara,99876542,4"),
          _buildTableRow("Peter,998975542,5"),
          _buildTableRow("Ambrose,88766542,4.3"),_buildTableRow("Lara,99876542,4"),
          _buildTableRow("Peter,998975542,5"),
          _buildTableRow("Ambrose,88766542,4.3"),_buildTableRow("Lara,99876542,4"),
          _buildTableRow("Peter,998975542,5"),
          _buildTableRow("Ambrose,88766542,4.3"),_buildTableRow("Lara,99876542,4"),
          _buildTableRow("Peter,998975542,5"),
          _buildTableRow("Ambrose,88766542,4.3"),_buildTableRow("Lara,99876542,4"),
          _buildTableRow("Peter,998975542,5"),
          _buildTableRow("Ambrose,88766542,4.3"),_buildTableRow("Lara,99876542,4"),
          _buildTableRow("Peter,998975542,5"),
          _buildTableRow("Ambrose,88766542,4.3"),

        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
//          debugPrint('Add Admin');
          return navigateadddriver();
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
  void navigateadddriver(){
    Navigator.push(context, MaterialPageRoute(builder: (context){
      return AddDriver();
    }));
  }
}
