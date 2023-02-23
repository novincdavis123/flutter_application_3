import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Hotel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            child: Stack(children: [
              Image(
                  image: NetworkImage(
                      'https://images.unsplash.com/photo-1602216056096-3b40cc0c9944?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8a2VyYWxhfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60')),
              Positioned(
                  left: 40,
                  top: 150,
                  child: Text(
                    'River Plaza\nAlappuzha Kerala',
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  )),
              Positioned(
                  left: 40,
                  top: 200,
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(30)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        '8.4/85 reviews',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  )),
              Positioned(
                  left: 460,
                  top: 240,
                  child: Icon(
                    Icons.favorite_border,
                    color: Colors.white,
                  ))
            ]),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Row(
              children: [
                Container(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Icon(Icons.star, color: Colors.purple),
                          Icon(Icons.star, color: Colors.purple),
                          Icon(Icons.star, color: Colors.purple),
                          Icon(Icons.star, color: Colors.purple),
                          Icon(Icons.star),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 30),
                        child: Row(
                          children: [
                            Icon(Icons.location_on),
                            Text('5 km to punnamada'),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 230),
                  child: Container(
                    child: Column(
                      children: [
                        Text(
                          '\$200',
                          style: TextStyle(color: Colors.purple, fontSize: 20),
                        ),
                        Text('/per night')
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      backgroundColor: Colors.purple),
                  onPressed: () {},
                  child: Text('Book Now')),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'ALAPPUZHA BACKWATERS',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          Text(
              'One night cruise on the backwaters of the Alappuzha is one of the most popular cruises offered. A round trip, in which you board the boat at Alappuzha and disembark at Alappuzha after having spent the night in the tranquility of the Backwaters.'
              'The cruise takes you through the clear waters of the prominent Punnamada Lake – the venue of the legendary Nehru Trophy Snake Boat Race. You can visit the 400 year old Champakkulam church, one of the 7 churches established by St. Thomas. The Chavara Bhavan, located 6 km from Alleppey , is another interesting place that one cant affoed to miss. The ancestral home of the Blessed Kuriakose Elias Chavara, the Chavara Bhavan houses the legendary 250 year old beacon of light – preserved intact in its original and primitive form.'
              'After spending the night at the romantic Vattakayal Lake, you sail back to Alappuzha.'),
          Text(
              'There are many interesting routes to cruise on the Backwaters of Kerala, each route is more enchanting than the other.'
              'Alappuzha to Alappuzha is a one night round about cruise which takes you through the Legendary Punnamada Lake. Sail along the gentle clear backwaters to the romantic Vattakayal Lake and spend a night aboard.'
              'Alappuzha to Kumarakom, a one night cruise which offers you a magical night. Water birds – both residents and migratory adorn the canals and water ways. The water lilies when seen in the night dazzle like the twinkling stars in a dark sky. Fishing women and men add to the magic with their imaginative ways of fishing.'
              'Alappuzha to Kottayam is one of the most exotic Backwaters cruises. A cruise from Alappuzha through these backwaters tantalizes you with its breathtaking serenity to remain as the most beautiful reminiscences of your life. See the toddy tappers at work and farming done at below sea level.')
        ],
      ),
      bottomNavigationBar:
          NavigationBar(selectedIndex: 0, height: 50, destinations: [
        Column(
          children: [
            Icon(
              Icons.search,
              color: Colors.pink,
            ),
            Text('search', style: TextStyle(color: Colors.pink))
          ],
        ),
        Column(
          children: [Icon(Icons.favorite), Text('favorite')],
        ),
        Column(
          children: [Icon(Icons.settings), Text('setting')],
        )
      ]),
    );
  }
}
