import 'package:flutter/material.dart';

class Grid5 extends StatelessWidget {
  var list = [
    Card(
      elevation: 10,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20)),
      color: Colors.blue[300],
      child: const ListTile(
        leading: 
          Icon(Icons.home_filled),
          title:Text('Heart\nShaker')
      ),
    ),
    Card(
      elevation: 10,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20)),
      color: Colors.orange,
      child: const ListTile(
        leading: 
          Icon(Icons.notifications),
          title:Text('Heart\nShaker')
      ),
    ),
    Card(
      elevation: 10,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20)),
      color: Colors.green,
      child: const ListTile(
        leading: 
          Icon(Icons.camera_alt_outlined),
          title:Text('Heart\nShaker')
      ),
    ),
    Card(
      elevation: 10,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20)),
      color: Colors.pink,
      child: const ListTile(
        leading: 
          Icon(Icons.stars_rounded),
          title:Text('Heart\nShaker')
      ),
    ),
    Card(
      elevation: 10,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20)),
      color: Colors.red,
      child: const ListTile(
        leading: 
          Icon(Icons.align_horizontal_center_rounded),
          title:Text('Heart\nShaker')
      ),
    ),
    Card(
      elevation: 10,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20)),
      color: Colors.blue[900],
      child: const ListTile(
        leading: 
          Icon(Icons.filter_b_and_w_outlined),
          title:Text('Heart\nShaker')
      ),
    ),
    Card(
      elevation: 10,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20)),
      color: Colors.pink[400],
      child: const ListTile(
        leading: 
          Icon(Icons.call),
          title:Text('Heart\nShaker')
      ),
    ),
    Card(
      elevation: 10,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20)),
      color: Colors.green[900],
      child: const ListTile(
        leading: 
          Icon(Icons.mail),
          title:Text('Heart\nShaker')
      ),
    ),
    Card(
      elevation: 10,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20)),
      color: Colors.yellow,
      child: const ListTile(
        leading: 
          Icon(Icons.check_box_outline_blank_sharp),
          title:Text('Heart\nShaker')
      ),
    ),
    Card(
      elevation: 10,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20)),
      color: Colors.orange[900],
      child: const ListTile(
        leading: 
          Icon(Icons.oil_barrel_sharp),
          title:Text('Heart\nShaker')
      ),
    ),
    Card(
      elevation: 10,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20)),
      color: Colors.pink[700],
      child: const ListTile(
        leading: 
          Icon(Icons.mic_off),
          title:Text('Heart\nShaker')
      ),
    ),
    Card(
      elevation: 10,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20)),
      color: Colors.green,
      child: const ListTile(
        leading: 
          Icon(Icons.file_open_outlined),
          title:Text('Heart\nShaker')
      ),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
          gridDelegate:
              const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,mainAxisSpacing: 20,crossAxisSpacing: 20,mainAxisExtent: 80),
          itemCount: 12,
          itemBuilder: (context, index) {
            return list[index];
          }),
    );
  }
}