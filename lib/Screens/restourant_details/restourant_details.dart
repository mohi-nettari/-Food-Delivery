
import 'package:flutter/material.dart';
class RestaurantDetailsScreen extends StatelessWidget {
  const RestaurantDetailsScreen.RestaurantDeatailsScreen({Key? key}) : super(key: key);
  static const String routeName = '/RestaurantScreen';
  static Route route(){
    return MaterialPageRoute(builder: (_)=> RestaurantDetailsScreen.RestaurantDeatailsScreen(),
      settings: RouteSettings(name: routeName),

    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Restaurant Details'),),

      body: Center(

        child: ElevatedButton(
          //    icon: Icon(Icons.map_rounded),  //icon data for elevated button
          //  label: Text("Maps"),
          child: Text('Home'),
          onPressed: () {
            Navigator.pushNamed(context, '/');
          },

        ),
      ),
    );
  }

}
