import 'package:flutter/material.dart';

class Tack1 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
    appBar: AppBar(backgroundColor: Colors.blue,leading: Icon(Icons.menu),title: 
    Center(child: Text('Profile')),actions: [Icon(Icons.more_vert_rounded)],),
     body: Stack(
       children: [
         Container(height: 300,decoration: const BoxDecoration(
          image: DecorationImage(fit: BoxFit.fill,image: NetworkImage(
          'https://images.unsplash.com/photo-1454496522488-7a8e488e8606?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8aGltYWxheWFzfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=1400&q=60'))),),
        Container(child: const Positioned(left: 40,bottom: 250,
        child: CircleAvatar(child: Icon(Icons.message),
        backgroundColor:Colors.deepOrange,radius: 40))),
         const Center(child: CircleAvatar(radius: 90,backgroundImage: NetworkImage(
          'https://images.unsplash.com/photo-1599566150163-29194dcaad36?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjB8fHBlcnNvbnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=1400&q=60'),)),
       Container(child: const Positioned(right: 40,bottom: 250,
        child: CircleAvatar(child: Icon(Icons.add),backgroundColor:Colors.blue,radius: 40,))),
        const Positioned(left: 150,bottom: 100,child: Text('Cristopher nolan',
        style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30))),
        const Positioned(left: 200,bottom: 50,child: Text('Director/producer',
        style: TextStyle(color: Colors.blue))),
       ],
     ),
   );
  }
}