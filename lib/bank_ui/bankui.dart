import 'package:flutter/material.dart';

class Bankui extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        title: Center(child: Text('Welcome! MAUSAM')),
        actions: [Icon(Icons.qr_code_scanner)],
      ),
      body: ListView(
        children: [
          Stack(children: [
            Container(
              child: Column(
                children: [
                  Container(
                    color: Colors.red,
                    height: 50,
                    width: 500,
                  ),
                  Container(
                    height: 100,
                    width: 500,
                  ),
                ],
              ),
            ),
            Positioned(
              left: 10,
              top: 30,
              child: Card(elevation: 10,
                // color: Colors.yellow,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Stack(children: [
                            CircleAvatar(radius: 30,
                              backgroundColor: Colors.red,
                            ),
                            Positioned(left: 4,top: 4,
                              child: CircleAvatar(radius: 26,
                                backgroundImage: NetworkImage(
                                    'https://images.unsplash.com/photo-1517863313243-4d4677f8f8bf?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjN8fGFsYW4lMjB3YWxrZXJ8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60'),
                              ),
                            ),
                          ]),
                          Column(
                            children: [
                              Text('SAMMUNATI BACHAT KHATA'),
                              Row(
                                children: [
                                  Text('NPR.',style: TextStyle(color: Colors.red)),
                                  Text('1,00,999,35',style: TextStyle(color: Colors.red,fontSize: 20,fontWeight: FontWeight.bold)),
                                  Icon(Icons.visibility)
                                ],
                              ),
                              Text('281656484161548651'),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Text(
                      '.',
                      style: TextStyle(color: Colors.red,fontSize: 20,fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
            )
          ]),
        ],
      ),
    );
  }
}
