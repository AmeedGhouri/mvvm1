import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mvvm/utils/routes/routes_names.dart';
import 'package:mvvm/view/Home_screen.dart';
import 'package:mvvm/view/login_view.dart';
class Routes{

  static Route<dynamic> generateRoute(RouteSettings settings){
   final argument = settings.arguments;
    switch(settings.name){
      case RoutesName.home:
        return MaterialPageRoute(builder: (BuildContext context) => HomeScreen());
      case RoutesName.login:
        return MaterialPageRoute(builder: (BuildContext context) => LoginView());
      default:
        return MaterialPageRoute(builder: (_){
          return const Scaffold(
            body: Center(
              child: Text('No route defined'),
            ),
          );
        });
    }
  }
}