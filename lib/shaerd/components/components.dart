import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';

Widget defaultButton({
 required double widith,
  required Color color ,
  required Function function,
  required String text ,
  bool isUpperCase=true,

})=>Container(
width: widith,
color: color,
child: MaterialButton(
onPressed: function(),
child: Text( isUpperCase?text.toUpperCase():text,
style: TextStyle(
fontWeight: FontWeight.bold,
fontSize: 30.0,
color: Colors.white,
),
),
),
);









Widget defaultTextForm({

 required TextEditingController control,
  required TextInputType textType,
 required IconData icon,
 required String labelText,
 bool obscure=false,
 IconData? suffixicon,
 required Function validat,
 Function? onPreased,
 Function? onTap,
 required Function  onFieldSubmitted,
 Function?  onChanged,
})=>TextFormField(
 controller: control ,
 keyboardType:textType ,
 obscureText: obscure,
 onTap: onTap!(),
 onChanged: onChanged!(),
 onFieldSubmitted: onFieldSubmitted(),
 validator: validat(),
 decoration: InputDecoration(
  labelText: labelText,
  prefixIcon: Icon(
   icon,
  ),
  suffixIcon: IconButton(
     onPressed: onPreased!(),
      icon:Icon(suffixicon),
  ),
  border: OutlineInputBorder(),


 ),
);










void  navigatorTo(context,Widget widget)=>Navigator.push(
 context,
 MaterialPageRoute(
  builder: (context)=>widget
 ),
);




void  navigatorToAndFinch(context,Widget widget)=>Navigator.pushAndRemoveUntil
 (
    context,
   MaterialPageRoute(
     builder: (context)=>widget
 ),
    (Route<dynamic>rout)=>false,
);



// void showToast(
// {
//  required String msg,
//   StateToast state
// }
// )=>Fluttertoast.showToast(
//  msg: msg,
//  toastLength: Toast.LENGTH_LONG,
//  gravity: ToastGravity.BOTTOM,
//  timeInSecForIosWeb: 1,
//  backgroundColor: chooseStateToast(state),
//  textColor: Colors.white,
//  fontSize: 16.0,
// );














