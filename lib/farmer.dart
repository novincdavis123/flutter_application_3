import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Farmer extends StatelessWidget {
  var images = [
    NetworkImage(
        'https://images.unsplash.com/photo-1610832958506-aa56368176cf?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8ZnJ1aXRzfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60'),
    NetworkImage(
        'https://images.unsplash.com/photo-1610043775988-060847913994?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTI2fHxmcnVpdHN8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60'),
    NetworkImage(
        'https://images.unsplash.com/photo-1620217491382-4772d58bc863?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTA0fHxmcnVpdHN8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60'),
  ];
  var Im = [
    NetworkImage(
        'https://images.unsplash.com/photo-1579113800032-c38bd7635818?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8dmVnZXRhYmxlc3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60'),
    NetworkImage(
        'https://images.unsplash.com/photo-1490885578174-acda8905c2c6?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjB8fGZydWl0c3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60'),
    NetworkImage(
        'https://images.unsplash.com/photo-1519996529931-28324d5a630e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8ZnJ1aXRzfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60'),
    NetworkImage(
        'https://images.unsplash.com/photo-1618897996318-5a901fa6ca71?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8ZnJ1aXRzfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60'),
    NetworkImage(
        'https://images.unsplash.com/photo-1471943038886-87c772c31367?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTR8fGZydWl0c3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60'),
    NetworkImage(
        'https://images.unsplash.com/photo-1573246123716-6b1782bfc499?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTV8fGZydWl0c3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60'),
  ];
  var a = [
    Text('Vegetables'),
    Text('Fruits'),
    Text('Exotic'),
    Text('Fresh Cuts'),
    Text('Nutrition Chargers'),
    Text('Packed Flavors'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(slivers: [
        SliverAppBar(
          pinned: true,
          floating: true,
          backgroundColor: Colors.green,
          title: Text('FARMERS FRESH ZONE'),
          actions: [
            Row(children: [
              Icon(Icons.location_on_outlined),
              Text('Kochi'),
              Icon(Icons.keyboard_arrow_down)
            ])
          ],
          bottom: AppBar(
              backgroundColor: Colors.green,
              title: Container(
                color: Colors.white,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Search for Vegetables,Fruits...",
                    prefixIcon: Icon(Icons.search),
                  ),
                ),
              )),
        ),
        SliverList(
          delegate: SliverChildListDelegate([
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.green),
                          color: Color.fromARGB(255, 202, 226, 175),
                          borderRadius: BorderRadius.circular(30)),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('VEGETABLES',
                            style: TextStyle(color: Colors.green)),
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.green),
                          color: Color.fromARGB(255, 202, 226, 175),
                          borderRadius: BorderRadius.circular(30)),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('FRUITS',
                            style: TextStyle(color: Colors.green)),
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.green),
                          color: Color.fromARGB(255, 202, 226, 175),
                          borderRadius: BorderRadius.circular(30)),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('EXOTIC',
                            style: TextStyle(color: Colors.green)),
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.green),
                          color: Color.fromARGB(255, 202, 226, 175),
                          borderRadius: BorderRadius.circular(30)),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('FRESH CUTS',
                            style: TextStyle(color: Colors.green)),
                      )),
                ),
              ],
            ),
            Column(children: [
              CarouselSlider(
                items: List.generate(3, (index) {
                  return Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: images[index], fit: BoxFit.cover)),
                  );
                }),
                options: CarouselOptions(
                  height: 100,
                  pauseAutoPlayInFiniteScroll: true,
                  autoPlay: true,
                  enlargeCenterPage: false,
                  viewportFraction: 1,
                  aspectRatio: 16 / 7,
                  initialPage: 2,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.green)),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 40, top: 10, bottom: 10),
                        child: Column(
                          children: [
                            Icon(Icons.timer, color: Colors.blue),
                            Text('30 MINS POLICY')
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 40, top: 10, bottom: 10),
                        child: Column(
                          children: [
                            Icon(Icons.phone, color: Colors.red),
                            Text('TRACEABILITY')
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 40, top: 10, bottom: 10),
                        child: Column(
                          children: [
                            Icon(Icons.person, color: Colors.yellow),
                            Text('LOCAL SOURCING')
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ]),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Shop By Category',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            )
          ]),
        ),
        SliverGrid(
            delegate:
                SliverChildBuilderDelegate(childCount: 6, (context, index) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Card(
                    child: Column(
                      children: [
                        Container(
                            height: MediaQuery.of(context).size.height / 8,
                            width: MediaQuery.of(context).size.width * .3,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: Im[index], fit: BoxFit.cover),
                                borderRadius: BorderRadius.circular(20))),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          child: a[index],
                        )
                      ],
                    ),
                  ),
                ],
              );
            }),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3, mainAxisSpacing: 10, crossAxisSpacing: 10))
      ]),
      bottomNavigationBar: NavigationBar(height: 50, destinations: [
        Column(
          children: [Icon(Icons.home), Text('HOME')],
        ),
        Column(
          children: [Icon(Icons.shopping_cart), Text('CART')],
        ),
        Column(
          children: [Icon(Icons.person), Text('ACCOUNT')],
        )
      ]),
    );
  }
}
