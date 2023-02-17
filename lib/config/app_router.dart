import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery_app/Screens/Home/home_screen.dart';
import 'package:food_delivery_app/Screens/Locations/locations_screen.dart';
import 'package:food_delivery_app/Screens/basket/basket_screen.dart';
import 'package:food_delivery_app/Screens/checkout/checkout_screen.dart';
import 'package:food_delivery_app/Screens/delivery_time/delivery_screen.dart';
import 'package:food_delivery_app/Screens/filter/filter_screen.dart';
import 'package:food_delivery_app/Screens/restourant_details/restourant_details.dart';
import 'package:food_delivery_app/Screens/restourant_listing/restourant_listing.dart';
import 'package:food_delivery_app/Screens/voucher/voucher_screen.dart';

class AppRouter{
  static Route onGenerateRout(RouteSettings settings){
    print('The Rout is: ${settings.name}');
    switch (settings.name){
      case '/' :
        return HomeScreen.route();

      case HomeScreen.routeName:
        return HomeScreen.route();

      case LocationScreen.routeName:
        return LocationScreen.route();

      case BasketScreen.routeName :
        return BasketScreen.route();

      case CheckoutScreen.routeName:
        return CheckoutScreen.route();

      case DeliveryTimeScreen.routeName:
        return DeliveryTimeScreen.route();

      case FilterScreen.routeName:
        return FilterScreen.route();

      case RestaurantDetailsScreen.routeName:
        return RestaurantDetailsScreen.route();

      case RestaurantListingScreen.routeName:
        return RestaurantListingScreen.route();

      case VoucherScreen.routeName:
        return VoucherScreen.route();
        break;
      default:
       return _errourRout();

    }
  }

  static Route _errourRout(){
    return MaterialPageRoute(builder: (_)=> Scaffold(
      appBar: AppBar(title : Text('error')),
    ),
      settings: RouteSettings(name: '/error'),

    );
  }


}