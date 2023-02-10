import 'package:flutter/material.dart';

class Ext extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.blue,leading: Icon(Icons.menu), title:
      Text('SHRINE'), actions: const [
        SizedBox(width: 50, child: Icon(Icons.search)),
        Icon(Icons.filter_list)
      ],),
      
      body: GridView.extent(
          maxCrossAxisExtent: 300, mainAxisSpacing: 20, crossAxisSpacing: 30,
          children:
          [
          Padding(
          padding: const EdgeInsets.all(8.0),
      child: Card(child: Column(children: const [
        Image(height: 100,image: AssetImage('assets/images/bag.png')),
        Text('Vagabond sack', style: TextStyle(fontWeight: FontWeight.bold),),Text('\$120.00')])),
    ),
    Padding(
    padding: const EdgeInsets.all(8.0),
    child: Card(child: Column(children: [Image(image: AssetImage('assets/images/eyeglass.png')),
    Text('Stella',style: TextStyle(fontWeight: FontWeight.bold)),Text('\$58.00')],),),
    ),
    Padding(
    padding: const EdgeInsets.all(8.0),
    child: Card(child: Column(children: [Image(height:100,image: AssetImage('assets/images/belt.png')),
    Text('Whitney belt',style: TextStyle(fontWeight: FontWeight.bold)),Text('\$35.00')],),),
    ),
    Padding(
    padding: const EdgeInsets.all(8.0),
    child: Card(child: Column(children: [Image(height:100,image: AssetImage('assets/images/chain.png')),
    Text('Garden stand',style: TextStyle(fontWeight: FontWeight.bold)),Text('\$98.00')],),),
    ),
    Padding(
    padding: const EdgeInsets.all(8.0),
    child: Card(child: Column(children: [Image(height:100,image: AssetImage('assets/images/earrings.png')),
    Text('Strut earrings',style: TextStyle(fontWeight: FontWeight.bold)),Text('\$34.00')],),),
    ),
    Padding(
    padding: const EdgeInsets.all(8.0),
    child: Card(child: Column(children: [Image(height:100,image: AssetImage('assets/images/socks.png')),
    Text('Varsity socks',style: TextStyle(fontWeight: FontWeight.bold)),Text('\$12.00')],),),
    ),
    ])
    );
  }
}