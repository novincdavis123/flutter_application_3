import 'dart:html';

import 'package:flutter/material.dart';

class E extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      persistentFooterButtons: [
        Icon(Icons.verified_user),Icon(Icons.add),
        Icon(Icons.verified_user),Icon(Icons.add),
        Icon(Icons.verified_user),Icon(Icons.add),
        Icon(Icons.verified_user),Icon(Icons.add),
        Icon(Icons.verified_user),Icon(Icons.add)
        ],
        drawer: Icon(Icons.remove_circle),
        bottomSheet: Text('sjndjndhf'),
        body: ButtonBar(buttonTextTheme: ButtonTextTheme.accent,
        children: [Text('data'),Text('2'),
        
        ],

        ),
    );
  }

}