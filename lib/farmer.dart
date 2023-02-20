import 'package:flutter/material.dart';

class Farmer extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [SliverAppBar(
          title: Text('FARMERS FRESH ZONE'),actions: [Row(children:[
            Icon(Icons.location_on_outlined),Text('Kochi'),Icon(Icons.keyboard_arrow_down)])],
        ),
        SliverList(delegate: SliverChildListDelegate([Row(
          children: [
            Container(decoration: BoxDecoration(color: Colors.blue,borderRadius: BorderRadius.circular(30)),
              child:Text('VEGETABLES',style: TextStyle(color: Colors.green))),
            Container(decoration: BoxDecoration(color: Colors.blue,borderRadius: BorderRadius.circular(30)),
              child:Text('FRUITS',style: TextStyle(color: Colors.green))),
            Container(decoration: BoxDecoration(color: Colors.blue,borderRadius: BorderRadius.circular(30)),
              child:Text('EXOTIC',style: TextStyle(color: Colors.green))),
            Container(decoration: BoxDecoration(color: Colors.blue,borderRadius: BorderRadius.circular(30)),
              child:Text('FRESH CUTS',style: TextStyle(color: Colors.green))),
          ],
        )]))
        ]
      ),
      bottomNavigationBar: NavigationBar(
        destinations: [Column(
        children: [
          Icon(Icons.home),Text('HOME')
        ],
      ),
      Column(
        children: [
          Icon(Icons.shopping_cart),Text('CART')
        ],
      ),
      Column(
        children: [
          Icon(Icons.person),Text('ACCOUNT')
        ],
      )]),
    );
  }
  
}