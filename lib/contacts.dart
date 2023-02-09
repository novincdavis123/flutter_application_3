import 'package:flutter/material.dart';

class Contacts extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
    appBar: AppBar(title: Text('Contacts'),backgroundColor: Colors.blue,),
    body: ListView(children: const [
      Padding(
        padding: EdgeInsets.all(6.0),
        child: Card(
          child: ListTile(
            leading: CircleAvatar(backgroundImage: NetworkImage(
              'https://images.unsplash.com/photo-1544005313-94ddf0286df2?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=688&q=80')),
            title: Text('Seetha'),
            subtitle: Text('657578978'),
            trailing: Icon(Icons.phone),
          )
          ),
          ),
         Padding(
           padding: EdgeInsets.all(6.0),
           child: Card(
        child: ListTile(
            leading: CircleAvatar(backgroundImage: NetworkImage(
              'https://images.unsplash.com/photo-1547425260-76bcadfb4f2c?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8cGVyc29ufGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=600&q=60')),
            title: Text('Joel'),
            subtitle: Text('8354627880'),
            trailing: Icon(Icons.phone),
          )
          ),
          ), 
         Padding(
           padding: EdgeInsets.all(6.0),
           child: Card(
        child: ListTile(
            leading: CircleAvatar(backgroundImage: NetworkImage(
              'https://images.unsplash.com/photo-1499952127939-9bbf5af6c51c?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTJ8fHBlcnNvbnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=600&q=60')),
            title: Text('Lakshmy'),
            subtitle: Text('7045321787'),
            trailing: Icon(Icons.phone),
          )
          ),
          ),
          Padding(
            padding: EdgeInsets.all(6.0),
            child: Card(
        child: ListTile(
            leading: CircleAvatar(backgroundImage: NetworkImage(
              'https://images.unsplash.com/photo-1500048993953-d23a436266cf?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTd8fHBlcnNvbnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=600&q=60')),
            title: Text('Aravind'),
            subtitle: Text('8746586901'),
            trailing: Icon(Icons.phone),
          )
          ),
          ),
         Padding(
           padding: EdgeInsets.all(6.0),
           child: Card(
        child: ListTile(
            leading: CircleAvatar(backgroundImage: NetworkImage(
              'https://images.unsplash.com/photo-1504593811423-6dd665756598?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTh8fHBlcnNvbnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=600&q=60')),
            title: Text('Gokul'),
            subtitle: Text('9873635240'),
            trailing: Icon(Icons.phone),
          )
          ),
          ),
        Padding(
          padding: EdgeInsets.all(6.0),
          child: Card(
        child: ListTile(
            leading: CircleAvatar(backgroundImage: NetworkImage(
              'https://images.unsplash.com/photo-1599566150163-29194dcaad36?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjB8fHBlcnNvbnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=600&q=60')),
            title: Text('Nik'),
            subtitle: Text('7873605240'),
            trailing: Icon(Icons.phone),
          )
          ),
          ),
    ]),
   );
  }
}