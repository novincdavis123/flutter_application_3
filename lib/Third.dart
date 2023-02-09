import 'package:flutter/material.dart';

class RegScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 50),
            child: Text(
              'Sign Up',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 50),
            child: Text(
              'Create an Account,Its free',
              style: TextStyle(fontSize: 10),
            ),
          ),
           Padding(
            padding: EdgeInsets.only(left: 20, right: 20, top: 10),
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.perm_contact_cal_rounded),
                labelText: "Email ID",
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
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
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                  hintText: "Password"),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20, right: 20, top: 20),
            child: TextField(
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.visibility_off),
                  labelText: "PASSWORD",
                  suffixIcon: Icon(Icons.visibility_off),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                  hintText: "Password"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
              minimumSize: Size(500,50)),
                onPressed: () {}, child: const Text('Sign Up')),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 10.0),
            child: Text("Do you have an Account? Login"),
          ),
        ],
      ),
    );
  }
}