import 'package:flutter/material.dart';
import 'package:flutter_application_3/tourism2.dart';

class Tourism1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: [
        SizedBox(height: 50),
        CircleAvatar(
          radius: 100,
          backgroundImage: NetworkImage(
              'https://images.unsplash.com/photo-1601158935942-52255782d322?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTJ8fGxvZ298ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60'),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 160),
          child: Text(
            'Tourism App',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
                color: Colors.blueAccent),
          ),
        ),
        SizedBox(height: 50),
        Padding(
          padding: const EdgeInsets.only(left: 150, right: 150),
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  minimumSize: Size(500, 50),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  backgroundColor: Colors.blue[700]),
              onPressed: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => Tourism2()));
              },
              child: Text('Log In')),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(child: Text('-Or-')),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10, left: 100, right: 100),
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  backgroundColor: Colors.blue[900]),
              onPressed: () {},
              child: ListTile(
                  title: Text('Login With Facebook',
                      style: TextStyle(color: Colors.white)),
                  trailing: Icon(Icons.facebook, color: Colors.white))),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10, left: 100, right: 100),
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
              ),
              onPressed: () {},
              child: ListTile(
                  title: Text('Login With Twitter',
                      style: TextStyle(color: Colors.white)),
                  trailing: Icon(Icons.transfer_within_a_station,
                      color: Colors.white))),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10, left: 100, right: 100),
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  backgroundColor: Colors.red),
              onPressed: () {},
              child: ListTile(
                  title: Text('Login With Google',
                      style: TextStyle(color: Colors.white)),
                  trailing: Icon(Icons.transfer_within_a_station,
                      color: Colors.white))),
        ),
      ],
    ));
  }
}
