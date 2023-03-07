import 'package:flutter/material.dart';

class Mus3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: ListView(children: [
          ListTile(
            leading:
                Icon(Icons.keyboard_arrow_down, color: Colors.pink.shade100),
            title: Center(
              child: Text('Now Playing',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.pink.shade100)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 400,
              width: 200,
              decoration: BoxDecoration(
                  color: Colors.red,
                  image: DecorationImage(
                      fit: BoxFit.fill,
                      image: NetworkImage(
                          'https://images.unsplash.com/photo-1604639183321-788d64c94268?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTAwfHxtdXNpY3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60'))),
            ),
          ),
          ListTile(
            title: Center(
              child: Text('Flowers',
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.pink.shade100)),
            ),
            subtitle: Center(
              child: Text('Miley Cyrus',
                  style: TextStyle(fontSize: 10, color: Colors.white)),
            ),
          ),
        ]));
  }
}
