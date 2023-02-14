import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
class Lot extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        Lottie.asset('assets/anim/joker.json',height: 200,width: 200),
        Lottie.network('https://assets8.lottiefiles.com/packages/lf20_x3Frzjcozq.json',height: 200,width: 200)
      ],),
    );
  }

}