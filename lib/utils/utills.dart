import 'package:another_flushbar/flushbar.dart';
import 'package:another_flushbar/flushbar_route.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Utils{

  static void fieldFocusChange(BuildContext context,FocusNode current,FocusNode nextfocus){
    current.unfocus();
    FocusScope.of(context).requestFocus(nextfocus);
  }



 static toastMessage(String message){
    Fluttertoast.showToast(
        msg: message,
      backgroundColor: Colors.pink,
      textColor: Colors.white,
      fontSize: 30,
    );

  }
  static void flushBarErrorMessage(String message ,BuildContext context){
   showFlushbar(context: context,
       flushbar: Flushbar(
         message: message,
         backgroundColor: Colors.red,
         forwardAnimationCurve: Curves.decelerate,
         padding: const EdgeInsets.all(10),
         margin: const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
         flushbarPosition: FlushbarPosition.BOTTOM,
         icon: const Icon(Icons.error_rounded),
         duration: const Duration(seconds:3),
       )..show(context),
   );
  }
  static snackBar(String message,BuildContext context){
   return ScaffoldMessenger.of(context).showSnackBar(SnackBar(
       backgroundColor: Colors.red,
       content: Text(message)));
  }

}
