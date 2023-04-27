import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:pizzeria/pages/casa.dart';
import 'package:pizzeria/pages/pago.dart';
import 'package:pizzeria/pages/producto.dart';
import 'package:pizzeria/pages/proximo.dart';
import 'package:pizzeria/pages/snaks.dart';

class HomePage extends StatefulWidget {
  static String id = 'tres';

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  void _navigatorBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = [
    MyCasa(),
    MyPago(),
    Myprox(),
    Myproduct(),
    Mysnak()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: Container(
        color: Colors.black,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
          child: GNav(
            backgroundColor: Colors.black,
            color: Colors.white,
            activeColor: Colors.white,
            tabBackgroundColor: Colors.yellow.shade800,
            gap: 8,
            padding: EdgeInsets.all(16),
            onTabChange: _navigatorBottomBar,
            tabs: const [
              GButton(
                icon: Icons.home,
                text: 'home',
                iconSize: 20,
              ),
              GButton(
                icon: Icons.local_offer,
                text: 'ofertas',
                iconSize: 20,
              ),
              GButton(
                icon: Icons.next_plan,
                text: 'proximo',
                iconSize: 20,
              ),
              GButton(
                icon: Icons.local_pizza,
                text: 'pizza',
                iconSize: 20,
              ),
              GButton(
                icon: Icons.coffee,
                text: 'snak',
                iconSize: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
