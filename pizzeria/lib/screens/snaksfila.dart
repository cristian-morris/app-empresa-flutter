import 'package:flutter/material.dart';

class Myfila extends StatelessWidget {
  const Myfila({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          for (int b = 20; b < 24; b++)
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
                    "assets/$b.png",
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
