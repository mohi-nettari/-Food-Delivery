import 'package:flutter/material.dart';
import 'package:food_delivery_app/Screens/screens.dart';
import 'package:food_delivery_app/config/app_router.dart';


class LocationScreen extends StatelessWidget {
  const LocationScreen({Key? key}) : super(key: key);
  static const String routeName = '/location';

  static Route route(){
    return MaterialPageRoute(builder: (_)=> LocationScreen(),
      settings: RouteSettings(name: routeName),

    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Location'),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Home'),
          onPressed: () {
            Navigator.pushNamed(context, '/');
          },

        style: ElevatedButton.styleFrom(

        ),
        ),
      ),
    );
  }
}
