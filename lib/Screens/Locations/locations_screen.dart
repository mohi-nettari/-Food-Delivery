import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_delivery_app/Screens/screens.dart';
import 'package:food_delivery_app/config/app_router.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';


class LocationScreen extends StatelessWidget {
  const LocationScreen({Key? key}) : super(key: key);
  static const String routeName = '/location';

  static Route route(){
    return MaterialPageRoute(builder: (_)=> LocationScreen(),
      settings: RouteSettings(name: routeName),

    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: double.infinity,
            //google maps layout.
            child: GoogleMap(
              myLocationEnabled: true,
              initialCameraPosition:
              CameraPosition(target: LatLng(10,10),
                zoom: 5,),
            ),),

          //the search box and the logo next to it.
          Positioned(
           left:20,right: 20,top: 40,
           child: Container(
             height: 100,
             child: Row(
               children: [
                 SvgPicture.asset(
                   'assets/logo.svg',
                   height: 50,),
                 SizedBox(
                   width: 10,),
                 Expanded(child: LocationSearchBar()),
               ],
             ),
           ),
       ),
      //the Save button.
          Positioned(
            left:20,right: 20,bottom: 50,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal:70.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(primary: Theme.of(context).primaryColor),
                child: Text('Save'),
                onPressed: (){},
              ),
            ),
          ),
        ],
      ),
    );
  }
}

//Location search bar widget.
class LocationSearchBar extends StatelessWidget {
  const LocationSearchBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
           padding: const EdgeInsets.all(8.0),
           child: TextField(
             decoration: InputDecoration(
               filled: true,
               fillColor: Colors.white,
               hintText: 'Enter Your Location:',
               suffixIcon: Icon(Icons.search),
               contentPadding: const EdgeInsets.only(left : 20 , right : 5 , bottom : 5),
               focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10),
                   borderSide: BorderSide(color: Colors.white)),
               enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10),
                   borderSide: BorderSide(color: Colors.white)),

             ),),
         );
  }
}
