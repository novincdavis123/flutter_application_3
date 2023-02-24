import 'package:flutter/material.dart';
import 'package:flutter_application_3/dummy.dart';
import 'package:flutter_application_3/secondscreen.dart';

void main() {
  runApp(MaterialApp(
    home: FirstPage(),
    routes: {
      "second": (context) => SecondPage(),
    },
  ));
}

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("My Home Page"),
        ),
        body: ListView(
          padding: EdgeInsets.all(15),
          children: dummyProducts.map((product) {
            return ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(product["image"]),
              ),
              title: Text(product["name"]),
              onTap: () => goToSecond(context, product["id"]),
            );
          }).toList(),
        ));
  }

  void goToSecond(BuildContext context, productId) {
    Navigator.pushNamed(context, "second", arguments: productId);
  }
}
