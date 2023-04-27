import 'dart:io';

import 'package:flutter/material.dart';
import 'package:pizzeria/screens/home.dart';
import 'package:pizzeria/signup_screen.dart';
import 'package:url_launcher/url_launcher_string.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => StartState();
}

class StartState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return initWidget();
  }

  initWidget() {
    return Scaffold(
        body: SingleChildScrollView(
            child: Column(
      children: [
        Container(
          height: 300,
          width: 600,
       
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10), bottomRight: Radius.circular(10),topLeft: Radius.circular(20), topRight: Radius.circular(20)),
            color: Color.fromARGB(255, 250, 226, 122),
            gradient: LinearGradient(
              colors: [(Color.fromARGB(255, 252, 196, 76)), Color.fromARGB(255, 243, 190, 91)],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(top: 50),
                child: Image.asset(
                  "assets/restaurante.png",
                  height: 200,
                  width: 200,
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 0.0,  left: 0.0),
                alignment: Alignment.bottomCenter,
                child: Text(
                  "Las vegas",
                  style: TextStyle(fontSize: 20, color: Colors.red),
                ),
              )
            ],
          )),
        ),
        Container(
          alignment: Alignment.center,
          margin: EdgeInsets.only(left: 20, right: 20, top: 70),
          padding: EdgeInsets.only(left: 20, right: 20),
          height: 54,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: Colors.grey[200],
            boxShadow: [
              BoxShadow(
                  offset: Offset(0, 10),
                  blurRadius: 50,
                  color: Color(0xffEEEEEE)),
            ],
          ),
          child: TextField(
            cursorColor: Color.fromARGB(255, 245, 188, 31),
            decoration: InputDecoration(
              icon: Icon(
                Icons.email,
                color: Color.fromARGB(255, 245, 195, 31),
              ),
              hintText: "Email",
              enabledBorder: InputBorder.none,
              focusedBorder: InputBorder.none,
            ),
          ),
        ),
        Container(
          alignment: Alignment.center,
          margin: EdgeInsets.only(left: 20, right: 20, top: 20),
          padding: EdgeInsets.only(left: 20, right: 20),
          height: 54,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: Color(0xffEEEEEE),
            boxShadow: [
              BoxShadow(
                  offset: Offset(0, 20),
                  blurRadius: 100,
                  color: Color(0xffEEEEEE)),
            ],
          ),
          child: TextField(
            cursorColor: Color(0xffF5591F),
            decoration: InputDecoration(
              focusColor: Color(0xffF5591F),
              icon: Icon(
                Icons.vpn_key,
                color: Color.fromARGB(255, 245, 159, 31),
              ),
              hintText: "Contraseña",
              enabledBorder: InputBorder.none,
              focusedBorder: InputBorder.none,
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
          alignment: Alignment.centerRight,
          child: GestureDetector(
            onTap: () {
              // Write Click Listener Code Here
            },
            child: Text("Olvidaste tu contraseña?"),
            
          ),
          
        ),
        MaterialButton(
       
        child: Image.asset("assets/facebook.png", width: 40, height: 40,),
        onPressed: (() {
          launchUrlString("https://www.facebook.com/Delicalcetok");
        }),
        
        
        
        ),
        MaterialButton(
         
          
          child: Image.asset("assets/whatsapp.png", width: 40, height: 40, 
          
          ),
          onPressed: (() {
          launchUrlString("https://wa.me/9991302653?text=hola");
        })),
   
        GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, HomePage.id);
          },
          child: Container(
            alignment: Alignment.center,
            margin: EdgeInsets.only(left: 20, right: 20, top: 70),
            padding: EdgeInsets.only(left: 20, right: 20),
            height: 54,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [(Color.fromARGB(255, 245, 195, 31)), Color.fromARGB(255, 242, 228, 30)],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight),
              borderRadius: BorderRadius.circular(50),
              color: Colors.grey[200],
              boxShadow: [
                BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 50,
                    color: Color(0xffEEEEEE)),
              ],
            ),
            child: Text(
              "Iniciar sesion",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("No tienes una cuenta?  "),
              GestureDetector(
                child: Text(
                  "Registrar ahora",
                  style: TextStyle(color: Color(0xffF5591F)),
                ),
                onTap: () {
                  // Write Tap Code Here.
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SignUpScreen(),
                      ));
                },
              )
            ],
          ),
        )
      ],
    )));
  }
}
