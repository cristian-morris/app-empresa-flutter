import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class Newproduct extends StatelessWidget {
  const Newproduct({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        child: Column(
          children: [
            for (int p = 0; p < 10; p++)
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Container(
                  width: 380,
                  height: 150,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 3,
                        blurRadius: 10,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      InkWell(
                        onTap: () {},
                        child: Container(
                          alignment: Alignment.center,
                          child: Image.asset(
                            'assets/nuevo.jpg',
                            height: 120,
                            width: 150,
                          ),
                        ),
                      ),
                      Container(
                        width: 190,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              'hamburguesa',
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'Nueva hamburguesa gigante con mucha carne, solo aqui en las vegas',
                              style: TextStyle(
                                fontSize: 16,
                                //fontWeight: FontWeight.bold,
                              ),
                            ),
                            RatingBar.builder(
                              initialRating: 4,
                              minRating: 1,
                              direction: Axis.horizontal,
                              itemCount: 5,
                              itemSize: 18,
                              itemPadding: EdgeInsets.symmetric(horizontal: 4),
                              itemBuilder: (context, _) => Icon(
                                Icons.star,
                                color: Colors.red,
                              ),
                              onRatingUpdate: (index) {},
                            ),
                            Text(
                              '\$25',
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.red,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
