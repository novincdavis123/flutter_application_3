import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 50),
            child: Text(
              'Login',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 20),
            child: Text(
              'Welcome back!Login with your credentials',
              style: TextStyle(fontSize: 10),
            ),
          ),
           Padding(
            padding: EdgeInsets.only(left: 20, right: 20, top: 10),
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.perm_contact_cal_rounded),
                labelText: "Email ID",
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(100)),
                hintText: "User-ID",
              ),
            ),
          ),
           Padding(
            padding: EdgeInsets.only(left: 20, right: 20, top: 20),
            child: TextField(
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.visibility_off),
                  labelText: "PASSWORD",
                  suffixIcon: Icon(Icons.visibility_off),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(100)),
                  hintText: "Password"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
              minimumSize: Size(500,50)),
                onPressed: () {}, child: const Text('Log In')),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 10),
            child: Text("Do you have an Account? Sign Up"),
          ),
        ],
      ),
    );
  }
}