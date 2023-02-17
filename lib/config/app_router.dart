import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery_app/Screens/Home/home_screen.dart';
import 'package:food_delivery_app/Screens/Locations/locations_screen.dart';

class AppRouter{
  static Route onGenerateRout(RouteSettings settings){
    print('The Rout is: ${settings.name}');
    switch (settings.name){
      case '/' :
        return HomeScreen.route();
      case HomeScreen.routeName:
        return HomeScreen.route();
      case LocationScreen.routeName:
        return LocationScreen.route();
        break;
      default:
       return _errourRout();

    }
  }

  static Route _errourRout(){
    return MaterialPageRoute(builder: (_)=> Scaffold(
      appBar: AppBar(title : Text('error')),
    ),
      settings: RouteSettings(name: '/error'),

    );
  }


}