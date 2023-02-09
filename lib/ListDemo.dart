import 'package:flutter/material.dart';

class ListDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
    body: ListView(
      children:  [
        Center(child: Text('MY CONTACTS',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),)),
        // Text('data',style: TextStyle(fontSize: 20),),
        // Text('data2'),
        // Text('data3'),
        // Text('data4'),
        Card(color: Colors.red,
        child: ListTile(
         // leading: Icon(Icons.person),
          leading: CircleAvatar(backgroundImage: NetworkImage('https://images.unsplash.com/photo-1511367461989-f85a21fda167?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1631&q=80')),
          title: Text('joel'),
          subtitle: Text('657578978'),
          trailing: Icon(Icons.phone),
        )
        ),
        Card(color: Colors.red,
        child: ListTile(
          leading: CircleAvatar(backgroundImage: NetworkImage('https://images.unsplash.com/photo-1618401479427-c8ef9465fbe1?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=843&q=80')),
          title: Text('jofin'),
          subtitle: Text('985746443'),
          trailing: Wrap(children: [Icon(Icons.message),
          Icon(Icons.phone)],
          spacing: 20.0,
          ),
        )
        ),
        Card(color: Colors.red,
        child: ListTile(
         // leading: Icon(Icons.person),
          leading: CircleAvatar(backgroundImage: NetworkImage('https://images.unsplash.com/photo-1511367461989-f85a21fda167?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1631&q=80')),
          title: Text('joel'),
          subtitle: Text('657578978'),
          trailing: Icon(Icons.phone),
        )
        ),
      ],
    ),
   );
  }

}