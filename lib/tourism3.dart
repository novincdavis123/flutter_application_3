import 'package:flutter/material.dart';
import 'package:flutter_application_3/tourdummy.dart';

class Tourism3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final productId =
        ModalRoute.of(context)?.settings.arguments; // id from previous page
    final product =
        dummyProducts.firstWhere((element) => element["id"] == productId);
    return Scaffold(
      appBar: AppBar(
        title: Text("Beautiful Places"),
      ),
      body: ListView(children: [
        Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              Container(
                height: 200,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(product["image"]))),
              ),
              Text(
                "${product["name"]}",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text("${product["description"]}"),
              Text("${product["price"]}"),
              Text("${product["rating"]}"),
              Row(
                children: [SizedBox(width: 150),
                  Icon(Icons.star, color: Colors.yellow),
                  Icon(Icons.star, color: Colors.yellow),
                  Icon(Icons.star, color: Colors.yellow),
                  Icon(Icons.star, color: Colors.yellow),
                  Icon(Icons.star, color: Colors.yellow),
                ],
              )
            ],
          ),
        ),
      ]),
    );
  }
}
