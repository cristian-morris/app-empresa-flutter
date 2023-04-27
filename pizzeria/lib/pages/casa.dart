import 'package:flutter/material.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:pizzeria/Widgets/text_frave.dart';


class MyCasa extends StatelessWidget {
  static String id = 'casa';

  List<Widget> imagenes = [];
  final _initialCameraPosition = CameraPosition(target: LatLng(20.5658598,-89.9152931),
  zoom: 15,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(     
        child: Container(
          child: Column(
            children: [
              _swiper(),
              Row(
                children: [
                  Expanded(
                    child: Image(
                      image: AssetImage('assets/restaurante.png'),
                      height: 120,
                      width: 120,
                    ),
                  ),
                ],
              ),
          Container(
            
            height: 415,
            child: GoogleMap(initialCameraPosition: _initialCameraPosition,)),
            ],
            
          ),
          
        ),
        
      ),
     
    );
    
  }

  Widget _swiper() {
    return Container(
      width: double.infinity,
      height: 180.0,
      child: Swiper(
        itemBuilder: (BuildContext context, int index) {
          return new Image.asset(
            'assets/restaurante.png',
            fit: BoxFit.fill,
          );
        },
        autoplay: true,
        itemCount: 3,
        scrollDirection: Axis.horizontal,
        pagination: new SwiperPagination(),
        control: new SwiperControl(),
      ),
    );
  }
}
