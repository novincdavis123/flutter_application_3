import 'package:flutter/material.dart';
import 'package:flutter_application_3/Second.dart';
import 'package:flutter_application_3/Third.dart';
import 'package:flutter_application_3/loginpage.dart';

class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
  return Scaffold( 
      body: Container(
        child:Center(
        child:Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 50),
            child: Text(
              'Hello There!',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 20),
            child: Text(
              'Automatic identify verification which enable you to verify your identity',
              style: TextStyle(fontSize: 15),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 20),
            child: Image(image: AssetImage('assets/images/yo.jpg'),width: 300,
                height: 300,)
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: ElevatedButton(
                onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage(),));
          }, child:  Text('Login'),
                style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                minimumSize: Size(500,50))),
                ),   
          Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: ElevatedButton(
                onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => RegScreen(),));},
                 child: const Text('Sign Up'),
                style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                minimumSize: Size(500,50))
                ),
          ),
      ],
      ),))
  );
  }
}