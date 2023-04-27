import 'package:flutter/material.dart';
import 'package:pizzeria/screens/ItemsWidget.dart';

import 'package:pizzeria/screens/CategoriaWidget.dart';

class Myproduct extends StatelessWidget {
  const Myproduct({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        Container(
            
            padding: EdgeInsets.only(top: 25),
            decoration: BoxDecoration(
                color: Color(0xFFEDECF2),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(35),
                    topRight: Radius.circular(35))),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 15),
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Row(children: [
                      Container(
                        margin: EdgeInsets.only(left: 5),
                        height: 100,
                        width: 300,
                        child: TextFormField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Buscar',
                          ),
                        ),
                      ),
                      Icon(
                        Icons.search,
                        size: 20,
                        color: Color(0xFF4C53A5),
                      ),
                    ]),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    margin: EdgeInsets.symmetric(
                      vertical: 20,
                      horizontal: 10,
                    ),
                    child: Text(
                      'Productos',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF4C53A5),
                      ),
                    ),
                  ),
                  CategoriaWidget(),
                  Container(
                    alignment: Alignment.centerLeft,
                    margin: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                    child: Text(
                      "pastor",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF4C53A5),
                      ),
                    ),
                  ),
                  ItemsWidget(),
                ],
              ),
            ))
      ]),
    );
  }
}
