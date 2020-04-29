import 'package:flutter/material.dart';
import 'package:fleet_management/screens/signin.dart';
import 'package:fleet_management/main.dart';

class UserTable extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return UserTableState();
  }
}

class UserTableState extends State<UserTable> {
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
        title: Text('View Users'),
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
          _buildTableRow("NAME,PHONE,ADDRESS"),
          _buildTableRow("Palermo,99998888,Fleet street"),
          _buildTableRow("Stockholm,12443224,mumbai-24"),
          _buildTableRow("Berlin,432345624,union road"),
          _buildTableRow("Palermo,99998888,Fleet street"),
          _buildTableRow("Stockholm,12443224,mumbai-24"),
          _buildTableRow("Berlin,432345624,union road"),
          _buildTableRow("Palermo,99998888,Fleet street"),
          _buildTableRow("Stockholm,12443224,mumbai-24"),
          _buildTableRow("Berlin,432345624,union road"),
          _buildTableRow("Palermo,99998888,Fleet street"),
          _buildTableRow("Stockholm,12443224,mumbai-24"),
          _buildTableRow("Berlin,432345624,union road"),
          _buildTableRow("Palermo,99998888,Fleet street"),
          _buildTableRow("Stockholm,12443224,mumbai-24"),
          _buildTableRow("Berlin,432345624,union road"),
          _buildTableRow("Palermo,99998888,Fleet street"),
          _buildTableRow("Stockholm,12443224,mumbai-24"),
          _buildTableRow("Berlin,432345624,union road"),
          _buildTableRow("Palermo,99998888,Fleet street"),
          _buildTableRow("Stockholm,12443224,mumbai-24"),
          _buildTableRow("Berlin,432345624,union road"),
        ],
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
}
