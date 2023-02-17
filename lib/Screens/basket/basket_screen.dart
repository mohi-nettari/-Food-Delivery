
import 'package:flutter/material.dart';
class BasketScreen extends StatelessWidget {
  const BasketScreen({Key? key}) : super(key: key);
  static const String routeName = '/BasketScreen';
  static Route route(){
    return MaterialPageRoute(builder: (_)=> BasketScreen(),
      settings: RouteSettings(name: routeName),

    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Basket'),),

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
