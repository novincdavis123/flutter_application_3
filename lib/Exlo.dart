import 'package:flutter/material.dart';

class Exlo extends StatelessWidget {
  List colors = [
    Colors.red,
    Colors.yellow,
    
  ];
  List datas = ['Jaison', 'Andrea'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'EXPERIENCE',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 60),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(elevation: 10,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                child: ExpansionTile(
                  title: Text('Flutter Internship'),
                  subtitle: Text('6 months+'),
                  children: List.generate(
                      2,
                      (index) => ListTile(
                            leading: CircleAvatar(
                              backgroundColor: colors[index],
                            ),
                            title: Text(datas[index]),
                          )),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(elevation: 10,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              child: ExpansionTile(
                title: Text('Software Testing'),
                subtitle: Text('5 months'),
                children: List.generate(
                    2,
                    (index) => ListTile(
                          leading: CircleAvatar(
                            backgroundColor: colors[index],
                          ),
                          title: Text(datas[index]),
                        )),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(elevation: 10,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              child: ExpansionTile(
                title: Text('Java Training'),
                subtitle: Text('3 months+'),
                children: List.generate(
                    2,
                    (index) => ListTile(
                          leading: CircleAvatar(
                            backgroundColor: colors[index],
                          ),
                          title: Text(datas[index]),
                        )),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: Icon(Icons.more,color: Colors.white),
    );
  }
}
