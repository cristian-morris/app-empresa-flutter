import 'package:flutter/material.dart';

class CategoriaWidget extends StatelessWidget {
  const CategoriaWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          for (int i = 10; i < 13; i++)
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/$i.jpg",
                    width: 40,
                    height: 40,
                  ),
                  Text(
                    'pizza',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 10,
                      color: Color(0xFF4C53A5),
                    ),
                  )
                ],
              ),
            )
        ],
      ),
    );
  }
}
