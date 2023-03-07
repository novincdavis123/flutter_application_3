import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_application_3/Exlo.dart';
import 'package:flutter_application_3/ListDemo.dart';
import 'package:flutter_application_3/cart.dart';
import 'package:flutter_application_3/city.dart';
import 'package:flutter_application_3/clipp.dart';
import 'package:flutter_application_3/contacts.dart';
import 'package:flutter_application_3/draw.dart';
import 'package:flutter_application_3/exp.dart';
import 'package:flutter_application_3/extragrid.dart';
import 'package:flutter_application_3/griddemo.dart';
import 'package:flutter_application_3/gridstack.dart';
import 'package:flutter_application_3/home.dart';
import 'package:flutter_application_3/hotel.dart';
import 'package:flutter_application_3/list1.dart';
import 'package:flutter_application_3/listbuild.dart';
import 'package:flutter_application_3/listcustom.dart';
import 'package:flutter_application_3/listseparated.dart';
import 'package:flutter_application_3/lot.dart';
import 'package:flutter_application_3/musicplayer/musi3.dart';
import 'package:flutter_application_3/newpage.dart';
import 'package:flutter_application_3/pract.dart';
import 'package:flutter_application_3/pract3.dart';
import 'package:flutter_application_3/pract4.dart';
import 'package:flutter_application_3/profile.dart';
import 'package:flutter_application_3/profile2.dart';
import 'package:flutter_application_3/tourism/tourismfirst.dart';
import 'package:flutter_application_3/tourism/tourismsecond.dart';
import 'package:flutter_application_3/tourism1.dart';
import 'package:flutter_application_3/tourism3.dart';
import 'package:flutter_application_3/whatsapp.dart';
import 'Second.dart';
import 'farmer.dart';

void main() {
  runApp(MaterialApp(useInheritedMediaQuery: true,
    theme: ThemeData(primarySwatch: Colors.blue),
    debugShowCheckedModeBanner: false,
    home: SplashScreen(),
    routes: {
      "second": (context) => Tour2(),
    },
  ));
}

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(Duration(seconds: 1), () {
      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (context) => Mus3()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Image(
                image: AssetImage("assets/icons/ap.png"),
                width: 200,
                height: 200,
              ),
              Text(
                "MY HOME",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 50,
                    color: Colors.white),
              )
            ],
          ),
        ),
      ),
    );
  }
}
