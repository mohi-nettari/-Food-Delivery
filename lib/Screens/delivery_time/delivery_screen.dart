
import 'package:flutter/material.dart';
class DeliveryTimeScreen extends StatelessWidget {
  const DeliveryTimeScreen({Key? key}) : super(key: key);
  static const String routeName = '/DeliveryScreen';
  static Route route(){
    return MaterialPageRoute(builder: (_)=> DeliveryTimeScreen(),
      settings: RouteSettings(name: routeName),

    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Delivery Time'),),

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
