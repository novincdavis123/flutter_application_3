import 'package:flutter/material.dart';

class Bankui extends StatelessWidget {
  var list1 = [
    Icon(Icons.account_box, color: Colors.red),
    Icon(Icons.edit_location_outlined, color: Colors.green),
    Icon(Icons.mobile_friendly, color: Colors.red),
    Icon(Icons.mobile_screen_share, color: Colors.red),
    Icon(Icons.schedule_send, color: Colors.red),
    Icon(Icons.qr_code_scanner, color: Colors.red),
  ];
  var list2 = [
    'My Account',
    'Load eSewa',
    'Payment',
    'Fund Transfer',
    'Schedule\nPayment',
    'Scan To Pay'
  ];
  var list3 = ['10-06-2019', '18-09-2018'];
  var list4 = ['NPR.10,000.00', 'NPR.11,000.00'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        title: Center(
            child: Wrap(children: [
          Text('Welcome! '),
          Text('MAUSAM'),
        ])),
        actions: [
          Icon(Icons.qr_code_scanner),
          SizedBox(
            width: 10,
          )
        ],
      ),
      body: ListView(
        children: [
          Stack(children: [
            Container(
              child: Column(
                children: [
                  Container(
                    color: Colors.red,
                    height: 100,
                    width: 500,
                  ),
                  Container(
                    height: 125,
                    width: 500,
                  ),
                ],
              ),
            ),
            Positioned(
              left: 10,
              top: 30,
              child: Card(
                elevation: 10,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Stack(children: [
                            CircleAvatar(
                              radius: 70,
                              backgroundColor: Colors.red,
                            ),
                            Positioned(
                              left: 4,
                              top: 4,
                              child: CircleAvatar(
                                radius: 66,
                                backgroundImage: NetworkImage(
                                    'https://images.unsplash.com/photo-1517863313243-4d4677f8f8bf?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjN8fGFsYW4lMjB3YWxrZXJ8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60'),
                              ),
                            ),
                          ]),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('SAMMUNATI BACHAT KHATA',
                                    style: TextStyle(
                                      fontSize: 22,
                                    )),
                                Row(
                                  children: [
                                    Text('NPR.',
                                        style: TextStyle(
                                            color: Colors.red, fontSize: 22)),
                                    Text('1,00,999,35',
                                        style: TextStyle(
                                            color: Colors.red,
                                            fontSize: 28,
                                            fontWeight: FontWeight.bold)),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Icon(Icons.visibility,
                                        color: Colors.blueGrey)
                                  ],
                                ),
                                Text(
                                  '281656484161548651',
                                  style: TextStyle(fontSize: 20),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.red,
                      radius: 5,
                    ),
                    SizedBox(height: 10)
                  ],
                ),
              ),
            )
          ]),
          Row(
            children: [
              Icon(
                Icons.umbrella,
                color: Colors.red,
              ),
              SizedBox(
                width: 5,
              ),
              Text('WOULD YOU LIKE TO DO',
                  style: TextStyle(fontWeight: FontWeight.bold))
            ],
          ),
          GridView.builder(
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  mainAxisExtent: 100),
              itemCount: 6,
              itemBuilder: (context, index) {
                return Card(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        list1[index],
                        SizedBox(height: 5),
                        Text(list2[index])
                      ],
                    ),
                  ),
                );
              }),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Icon(
                  Icons.umbrella,
                  color: Colors.red,
                ),
                SizedBox(
                  width: 5,
                ),
                Text('LAST TRANSACTIONS',
                    style: TextStyle(fontWeight: FontWeight.bold))
              ],
            ),
          ),
          ListView.builder(
              shrinkWrap: true,
              itemCount: 2,
              itemBuilder: ((context, index) {
                return Card(
                  elevation: 4.0,
                  color: Colors.red,
                  clipBehavior: Clip.hardEdge,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Container(
                    height: 65,
                    width: MediaQuery.of(context).size.width,
                    margin: const EdgeInsets.only(left: 10),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          SizedBox(width: 10),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('CWDR/\n974884/9874513365478965',
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                              SizedBox(
                                height: 3,
                              ),
                              Text(list3[index],
                                  style: TextStyle(fontSize: 10)),
                            ],
                          ),
                          SizedBox(
                            width: 180,
                          ),
                          Text(list4[index]),
                        ],
                      ),
                    ),
                  ),
                );
              })),
        ],
      ),
    );
  }
}
