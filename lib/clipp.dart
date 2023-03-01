import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

class Clipp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          ClipRect(
              child: Align
              (widthFactor: .7,heightFactor: .6,
                child: Container(
                        child: Image(
                  image: NetworkImage(
                      'https://images.unsplash.com/photo-1677233860348-57df0de79295?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDF8QkpKTXR0ZURKQTR8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60')),
                      ),
              )),
          ClipRRect(borderRadius: BorderRadius.circular(300),
              child: Align(
                child: Image(
                  image: NetworkImage(
                      'https://images.unsplash.com/photo-1495615080073-6b89c9839ce0?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8c3F1YXJlfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60')),
              )),
              ClipPath(
            clipper: StarClipper(50),
            child: Container(
              height: 500,
              color: Colors.pink,
              child: Center(child: Text("MultipleRoundedCurveClipper()")),
            ),
          ),
          ClipOval(
              child: Container(
            child: Image(
                image: NetworkImage(
                    'https://images.unsplash.com/photo-1677233860348-57df0de79295?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDF8QkpKTXR0ZURKQTR8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60')),
          )),
          
        ]),
      ),
    );
  }
}
