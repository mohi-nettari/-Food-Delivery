
import 'package:flutter/material.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  static const String routeName = '/';
  static Route route(){
    return MaterialPageRoute(builder: (_)=> HomeScreen(),
      settings: RouteSettings(name: routeName),

    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home'),),
      body: Center(
        child: ElevatedButton(
        //    icon: Icon(Icons.map_rounded),  //icon data for elevated button
          //  label: Text("Maps"),
         child: Text('Maps'),
          onPressed: () {
                Navigator.pushNamed(context, '/location');
          },

    ),
      ),
    );
  }

}
