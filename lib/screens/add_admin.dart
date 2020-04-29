import 'package:flutter/material.dart';
import 'dart:async';
import 'package:fleet_management/screens/view_admins.dart';

class AddAdmin extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return AddAdminState();
  }
}

class AddAdminState extends State<AddAdmin> {
  static var _priorities = ['Fleet', 'Track', 'Inventory'];
  TextEditingController titleController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();

  AddAdminState();

  @override
  Widget build(BuildContext context) {
    TextStyle textStyle = Theme.of(context).textTheme.title;
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Admin'),
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 15.0, left: 10.0, right: 10.0),
        child: ListView(
          children: <Widget>[
            //Second element
            Padding(
              padding: EdgeInsets.only(top: 15.0, bottom: 15.0),
              child: TextField(
                controller: titleController,
                style: textStyle,
                onChanged: (value) {
                  debugPrint('Something Changed in the title Text field');
                },
                decoration: InputDecoration(
                    labelText: 'Name',
                    labelStyle: textStyle,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0))),
              ),
            ),

            Padding(
              padding: EdgeInsets.only(top: 15.0, bottom: 15.0),
              child: TextField(
                controller: descriptionController,
                style: textStyle,
                onChanged: (value) {
                  debugPrint('Something Changed in the Description Text field');
                },
                decoration: InputDecoration(
                    labelText: 'Admin ID',
                    labelStyle: textStyle,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0))),
              ),
            ),
            Card(
                child: Padding(
              padding: EdgeInsets.all(5.0),
              child: DropdownButton(
                  items: _priorities.map((String dropDownStringItem) {
                    return DropdownMenuItem<String>(
                      value: dropDownStringItem,
                      child: Text(dropDownStringItem),
                    );
                  }).toList(),
                  style: textStyle,
                  value: 'Fleet',
                  onChanged: (valueSelectByUser) {
                    setState(() {
                      debugPrint('User has selected $valueSelectByUser');
                    });
                  }),
            )),

            Padding(
              padding: EdgeInsets.only(top: 15.0, bottom: 15.0),
              child: Row(
                children: <Widget>[
                  Container(width: 90.0,),
                  SizedBox(
                      width: 200.0,
                      height: 50.0,
                      child: RaisedButton(
                          color: Theme.of(context).primaryColor,
                          textColor: Theme.of(context).primaryColorLight,
                          child: Text(
                            'Save',
                            style: textStyle,
                            textScaleFactor: 1.0,
                          ),
                          onPressed: () {
                            setState(() {
                              debugPrint('Save button clicked');
                            });
                          })),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
