import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';

class Hotel1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(slivers: [
      SliverAppBar(
        toolbarHeight: 80,
        leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.menu,
              color: Colors.white,
            )),
        pinned: true,
        floating: true,
        backgroundColor: Colors.blue,
        title: Center(
            child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Text(
              'Type your location',
              style: TextStyle(color: Colors.white),
            ),
          ],
        )),
        actions: [
          LikeButton(),
        ],
        bottom: AppBar(
          toolbarHeight: 80,
          backgroundColor: Colors.blue,
          title: TextField(
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide:
                      BorderSide(width: 1, color: Colors.pink.shade100)),
              filled: true,
              fillColor: Colors.white,
              hintStyle: TextStyle(color: Colors.black),
              hintText: "       Bouddha, Kathmandu",
              prefixIcon: IconButton(
                icon: Icon(Icons.search, color: Colors.black),
                onPressed: () {},
              ),
            ),
          ),
        ),
      ),
      SliverList(
          delegate: SliverChildListDelegate([
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              SizedBox(width: 20),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: () {},
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.pink[700],
                        borderRadius: BorderRadius.circular(10)),
                    height: 130,
                    width: 130,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 5, top: 35),
                      child: Column(
                        children: [
                          Icon(Icons.hotel, color: Colors.white),
                          Text(
                            'Hotel',
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: () {},
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.blue[700],
                        borderRadius: BorderRadius.circular(10)),
                    height: 130,
                    width: 130,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 5, top: 35),
                      child: Column(
                        children: [
                          Icon(Icons.restaurant, color: Colors.white),
                          Text(
                            'Restaurant',
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: () {},
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.orange,
                        borderRadius: BorderRadius.circular(10)),
                    height: 130,
                    width: 130,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 5, top: 35),
                      child: Column(
                        children: [
                          Icon(Icons.local_cafe, color: Colors.white),
                          Text(
                            'Cafe',
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: InkWell(
            onTap: () {},
            child: Card(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Stack(children: [
                    Image(
                        fit: BoxFit.fill,
                        height: 180,
                        width: 700,
                        image: NetworkImage(
                            'https://images.unsplash.com/photo-1611892440504-42a792e24d32?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTZ8fGhvdGVsfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60')),
                    Positioned(
                        left: 380,
                        top: 120,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white),
                            onPressed: () {},
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                '\$40',
                                style: TextStyle(color: Colors.black),
                              ),
                            )))
                  ]),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Awesome room near Bouddha',
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold)),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Bouddha, Kathmandu'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Icon(Icons.star, color: Colors.green),
                        Icon(Icons.star, color: Colors.green),
                        Icon(Icons.star, color: Colors.green),
                        Icon(Icons.star, color: Colors.green),
                        Icon(Icons.star, color: Colors.green),
                        Text('(220 views)'),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        )
      ]))
    ]));
  }
}
