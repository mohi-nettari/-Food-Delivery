
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
      body: ElevatedButton(
    child: Text('Location Screen'),
        onPressed: () {
              Navigator.pushNamed(context, '/location');
        },

    ),
    );
  }

}
