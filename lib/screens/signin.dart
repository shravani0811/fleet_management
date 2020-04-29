import 'package:flutter/material.dart';
import 'package:fleet_management/screens/signin.dart';
import 'package:fleet_management/main.dart';



class SigninForm extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _SigninFormState();
  }

}


class _SigninFormState extends State<SigninForm>{
  final _minimumPadding =5.0;
  void initState(){
    super.initState();

  }

  TextEditingController principalControlled= TextEditingController();
  TextEditingController roiControlled= TextEditingController();
  TextEditingController termControlled= TextEditingController();
  var displayResult='';

  @override//build
  Widget build(BuildContext context) {
    TextStyle textStyle= Theme.of(context).textTheme.title;
    // TODO: implement build
    return Scaffold(
//      resizeToAvoidBottomPadding: false,

      body: Container(
        margin: EdgeInsets.all(_minimumPadding*2),
        child: ListView(
          children: <Widget>[

//            getImageAsset(),
            Padding(
              padding: EdgeInsets.only(top: _minimumPadding*20,bottom: _minimumPadding*25,left: _minimumPadding*2,right: _minimumPadding*2),
              child: Text(
                "Come ckeckout an efficient way to management your fleet!",
                style: textStyle,
                textAlign: TextAlign.center,

              ),
            ),
            Padding(
                padding: EdgeInsets.only(top: _minimumPadding, bottom: _minimumPadding),
                child:TextField(
//                  keyboardType: TextInputType.number,
                  style: textStyle,
                  controller: principalControlled,
                  decoration: InputDecoration(
                      labelText:'User Name',
                      hintText: 'aaaa',
                      labelStyle: textStyle,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      )
                  ),

                )),
            Padding(
                padding: EdgeInsets.only(top: _minimumPadding*4, bottom:_minimumPadding ),
                child:TextField(
                  keyboardType: TextInputType.visiblePassword,
                  style: textStyle,
                  controller: roiControlled,
                  decoration: InputDecoration(
                      labelText:'Password',
                      hintText: '********',
                      labelStyle: textStyle,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      )
                  ),

                )),
//    

            Padding(
                padding: EdgeInsets.only(top: _minimumPadding*10, bottom: _minimumPadding),
                    child: Row(
                        children: <Widget>[
                          Container(width: 90.0,),
                          SizedBox(
                            width: 200.0,
                            height: 50.0,
                            child: RaisedButton(
                              color: Theme.of(context).accentColor,
                              textColor: Theme.of(context).primaryColorDark,
                              child: Text('SUBMIT',textScaleFactor: 1.0,style: textStyle,),
                              onPressed: (){
                                return navigateBack();
                              },
                            ),
                          ),
//                          Container(width: 10.0,),
                        ],
                    ),


            ),

            Padding(
              padding: EdgeInsets.all(_minimumPadding*2),
              child:Text(this.displayResult,style: textStyle,),
            )

          ],
        ),

      ),
    );
  }
//  Widget getImageAsset(){
//    AssetImage assetImage=AssetImage('images/money.png');
//    Image image= Image(image: assetImage, width: 125.0,height:125.0);
//    return Container(
//      child: image, margin: EdgeInsets.all(_minimumPadding*10),);
//  }
  void navigateBack(){
    Navigator.push(context, MaterialPageRoute(builder: (context){
      return SIForm();
//    TextStyle textStyle= Theme.of(context).textTheme.title;
//   Navigator.push(context, MaterialPageRoute(builder: (context){
//     if(principalControlled=='aaaa' && roiControlled=='1234'){
//       return SIForm();
//     }
//     else{
//       return Text(
//           'Invalid input',
//         style: textStyle,
//       );
//     }
   }));
  }
}
