
import 'package:flutter/material.dart';
class VoucherScreen extends StatelessWidget {
  const VoucherScreen({Key? key}) : super(key: key);
  static const String routeName = '/VoucherScreen';
  static Route route(){
    return MaterialPageRoute(builder: (_)=> VoucherScreen(),
      settings: RouteSettings(name: routeName),

    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Voucher'),),

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
