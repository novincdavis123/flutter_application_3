import 'package:flutter/material.dart';
import 'package:flutter_application_3/tourdummy.dart';

class Tourism2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            floating: true,
            leading: Icon(
              Icons.menu,
              color: Colors.black,
            ),
            title: Center(child: Text('GoFast')),
            actions: [
              CircleAvatar(
                radius: 20,
              )
            ],
            backgroundColor: Colors.white,
            bottom: AppBar(
                backgroundColor: Colors.white,
                title: Container(
                    color: Color.fromARGB(255, 233, 218, 218),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Search",
                        prefixIcon: Icon(Icons.search),
                      ),
                    ))),
          ),
          SliverList(
              delegate: SliverChildListDelegate([
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Container(
                    child: Text(
                      'Popular Places',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    width: 330,
                  ),
                  Container(
                    child: Text('View All'),
                  ),
                ],
              ),
            ),
           GridView(shrinkWrap: true,
            gridDelegate: 
           SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 230,
                mainAxisSpacing: 20,
                crossAxisSpacing: 20,
                childAspectRatio: 1.0),
            children: dummyProducts.map((product) {
            return GridTile(
              child: InkWell(
              onTap: () => goToSecond(context, product["id"]),
                child: Container(child: Text(product["name"]),
                  decoration: BoxDecoration(image:DecorationImage(fit:BoxFit.cover,image: NetworkImage(product["image"]))),
                ),
              ),
            );
          }).toList(),
           ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 3, 33, 78)),
                  onPressed: () {},
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Explore Now'),
                  )),
            )
          ]))
        ],
      ),
    );
  }
  void goToSecond(BuildContext context, productId) {
    Navigator.pushNamed(context, "second", arguments: productId);
  }
  
}


