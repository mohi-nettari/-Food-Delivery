
import 'package:flutter/material.dart';
class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({Key? key}) : super(key: key);
  static const String routeName = '/CheckoutScreen';
  static Route route(){
    return MaterialPageRoute(builder: (_)=> CheckoutScreen(),
      settings: RouteSettings(name: routeName),

    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Checkout'),),

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
