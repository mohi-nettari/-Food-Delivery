import 'package:flutter/material.dart';
import 'package:food_delivery_app/config/app_router.dart';
import 'Screens/screens.dart';
import 'package:food_delivery_app/Screens/screens.dart';
import 'package:food_delivery_app/config/app_router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'FoodDEx',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
          onGenerateRoute: AppRouter.onGenerateRout,
      initialRoute: LocationScreen.routeName,
    );
  }
}

