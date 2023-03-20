import 'package:flutter/material.dart';

class Prof extends StatefulWidget {
  @override
  State<Prof> createState() => _ProfState();
}

class _ProfState extends State<Prof> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 224, 219, 219),
      body: Column(
        children: [
          Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30))),
              child: Column(children: [
                SizedBox(height: 10),
                Row(
                  children: [
                    SizedBox(width: 5),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white),
                      onPressed: () {},
                      child: Icon(
                        Icons.arrow_back_ios,
                        color: Color.fromARGB(255, 7, 87, 153),
                      ),
                    ),
                    SizedBox(width: 150),
                    Text('Account'),
                  ],
                ),
                SizedBox(height: 15),
                Center(
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(
                            width: 5,
                            color: Color.fromARGB(255, 243, 237, 237))),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: Image(
                          height: 120,
                          width: 120,
                          fit: BoxFit.cover,
                          image: NetworkImage(
                              'https://images.unsplash.com/photo-1547425260-76bcadfb4f2c?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8cGVyc29ufGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60')),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Center(
                    child: Text(
                  'Dennis Callis',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                )),
                SizedBox(height: 5),
                Center(
                    child: Row(
                  children: [
                    SizedBox(width: 150),
                    Icon(
                      Icons.mail,
                      color: Color.fromARGB(255, 7, 87, 153),
                    ),
                    Text('denniscallismail@gmail.com'),
                  ],
                )),
                SizedBox(height: 5),
                Center(
                    child: Row(
                  children: [
                    SizedBox(width: 180),
                    Icon(Icons.phone_android_sharp,
                        color: Color.fromARGB(255, 7, 87, 153)),
                    Text('+91 9565621315'),
                  ],
                )),
                SizedBox(height: 5),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 180, top: 10, right: 180, bottom: 15),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        backgroundColor: Color.fromARGB(255, 7, 87, 153)),
                    onPressed: () {},
                    child: Center(
                      child: Text('Edit Profile'),
                    ),
                  ),
                )
              ])),
          Expanded(
            child: ListView(
              shrinkWrap: true,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      child: ListTile(
                          leading: Icon(Icons.wallet,
                              color: Color.fromARGB(255, 7, 87, 153)),
                          title: Text('My Wallet'),
                          trailing: Icon(Icons.arrow_forward_ios,
                              color: Color.fromARGB(255, 7, 87, 153)))),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      child: ListTile(
                          leading: Icon(Icons.history,
                              color: Color.fromARGB(255, 7, 87, 153)),
                          title: Text('Terms & Policies'),
                          trailing: Icon(Icons.arrow_forward_ios,
                              color: Color.fromARGB(255, 7, 87, 153)))),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      child: ListTile(
                          leading: Icon(Icons.help_outline,
                              color: Color.fromARGB(255, 7, 87, 153)),
                          title: Text('About'),
                          trailing: Icon(Icons.arrow_forward_ios,
                              color: Color.fromARGB(255, 7, 87, 153)))),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      child: ListTile(
                          leading: Icon(Icons.logout,
                              color: Color.fromARGB(255, 7, 87, 153)),
                          title: Text('Logout'),
                          trailing: Icon(Icons.arrow_forward_ios,
                              color: Color.fromARGB(255, 7, 87, 153)))),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      child: ListTile(
                          leading: Icon(Icons.person_add,
                              color: Color.fromARGB(255, 7, 87, 153)),
                          title: Text('Invite a friend'),
                          trailing: Icon(Icons.arrow_forward_ios,
                              color: Color.fromARGB(255, 7, 87, 153)))),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
