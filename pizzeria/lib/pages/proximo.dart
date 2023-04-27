import 'package:flutter/material.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:pizzeria/screens/Newproximo.dart';

class Myprox extends StatelessWidget {
  const Myprox({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              _swiper(),
              Text(
                'Nuevo',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF4C53A5),
                ),
              ),
              Newproduct(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _swiper() {
    return Container(
      width: double.infinity,
      height: 200.0,
      child: Swiper(
        itemBuilder: (BuildContext context, int index) {
          return new Image.asset(
            'assets/nuevo.jpg',
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
