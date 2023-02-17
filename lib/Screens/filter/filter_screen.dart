
import 'package:flutter/material.dart';
class FilterScreen extends StatelessWidget {
  const FilterScreen({Key? key}) : super(key: key);
  static const String routeName = '/FilterScreen';
  static Route route(){
    return MaterialPageRoute(builder: (_)=> FilterScreen(),
      settings: RouteSettings(name: routeName),

    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Filter'),),

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
