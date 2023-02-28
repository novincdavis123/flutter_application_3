
import 'package:flutter/material.dart';

class Profile2 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(toolbarHeight: 50.0,
        elevation: 0,
        backgroundColor: Colors.white70,
        leading: Icon(Icons.arrow_back,color: Colors.black,size: 30),
        actions: [Icon(Icons.menu,color: Colors.black,size: 30),
        SizedBox(width: 15)
        ],
      ),
      body: ListView(
        children: [
          Center(child: Container(
            child: CircleAvatar(radius: 75,
              backgroundImage: NetworkImage('https://images.unsplash.com/photo-1547425260-76bcadfb4f2c?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8cGVyc29ufGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60'),
            ),
          ),
          ),
          Row(children: [SizedBox(width: 200,),
            Icon(Icons.facebook,color: Colors.blue),
            SizedBox(width: 10),
            Icon(Icons.facebook),
            SizedBox(width: 10),
            Icon(Icons.facebook),
            SizedBox(width: 10),
            Icon(Icons.facebook),
          ],),
            SizedBox(height: 15),
            Center(child: Text('Jerome')),
            Center(child: Text('@webrror')),
            SizedBox(height: 10),
            Center(child: Text('Mobile App Developer')),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(decoration: BoxDecoration(color: Color.fromARGB(255, 224, 219, 219),
                borderRadius: BorderRadius.circular(30)),
                child: ListTile(leading: Icon(Icons.privacy_tip),title: Text('Privacy'),trailing: Icon(Icons.arrow_forward_ios))),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(decoration: BoxDecoration(color: Color.fromARGB(255, 224, 219, 219),
                borderRadius: BorderRadius.circular(30)),
                child: ListTile(leading: Icon(Icons.privacy_tip),title: Text('Privacy'),trailing: Icon(Icons.arrow_forward_ios))),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(decoration: BoxDecoration(color: Color.fromARGB(255, 224, 219, 219),
                borderRadius: BorderRadius.circular(30)),
                child: ListTile(leading: Icon(Icons.privacy_tip),title: Text('Privacy'),trailing: Icon(Icons.arrow_forward_ios))),
            ),
            ListTile(leading: Icon(Icons.privacy_tip),title: Text('Privacy'),trailing: Icon(Icons.arrow_forward_ios)),
            ListTile(leading: Icon(Icons.privacy_tip),title: Text('Privacy'),trailing: Icon(Icons.arrow_forward_ios)),
            ListTile(leading: Icon(Icons.privacy_tip),title: Text('Privacy'),trailing: Icon(Icons.arrow_forward_ios)),
            ListTile(leading: Icon(Icons.privacy_tip),title: Text('Privacy'),trailing: Icon(Icons.arrow_forward_ios)),
            ListTile(leading: Icon(Icons.privacy_tip),title: Text('Privacy'),trailing: Icon(Icons.arrow_forward_ios)),
            ListTile(leading: Icon(Icons.privacy_tip),title: Text('Privacy'),trailing: Icon(Icons.arrow_forward_ios)),
        ],
      ),
    );
  }
}