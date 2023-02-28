import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Exlo extends StatelessWidget {
  List persons = [
    'https://images.unsplash.com/photo-1504593811423-6dd665756598?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTh8fHBlcnNvbnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1580489944761-15a19d654956?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjN8fHBlcnNvbnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60',
  ];
  List datas = ['Jaison', 'Andrea'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue,
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Text(
                'EXPERIENCE',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 60),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Stack(children: [
              Card(
                elevation: 10,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                child: Lottie.network(
                    'https://assets8.lottiefiles.com/packages/lf20_aUWNNN4EYV.json',
                    height: 150,
                    width: 500,
                    fit: BoxFit.fill),
              ),
              Positioned(
                child: ExpansionTile(
                  title: Text('Flutter Internship',
                      style: TextStyle(color: Colors.red)),
                  subtitle: Text('6 months+'),
                  children: List.generate(
                      2,
                      (index) => ListTile(
                            leading: CircleAvatar(
                              backgroundImage: NetworkImage(persons[index]),
                            ),
                            title: Text(datas[index]),
                          )),
                ),
              ),
            ]),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Stack(children: [
              Card(
                elevation: 10,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                child: Lottie.network(
                    'https://assets3.lottiefiles.com/packages/lf20_FpLUwguoSs.json',
                    height: 150,
                    width: 500,
                    fit: BoxFit.fill),
              ),
              Positioned(
                child: ExpansionTile(
                  title: Text('Software Testing',
                      style: TextStyle(color: Colors.red)),
                  subtitle: Text('5 months'),
                  children: List.generate(
                      2,
                      (index) => ListTile(
                            leading: CircleAvatar(
                              backgroundImage: NetworkImage(persons[index]),
                            ),
                            title: Text(datas[index]),
                          )),
                ),
              ),
            ]),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Stack(children: [
              Card(
                elevation: 10,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                child: Lottie.network(
                    'https://assets8.lottiefiles.com/packages/lf20_L3zgPE770f.json',
                    height: 150,
                    width: 500,
                    fit: BoxFit.fill),
              ),
              Positioned(
                child: ExpansionTile(
                  title: Text('Java Training',
                      style: TextStyle(color: Colors.red)),
                  subtitle: Text('3 months+'),
                  children: List.generate(
                      2,
                      (index) => ListTile(
                            leading: CircleAvatar(
                              backgroundImage: NetworkImage(persons[index]),
                            ),
                            title: Text(datas[index]),
                          )),
                ),
              ),
            ]),
          ),
        ],
      ),
      floatingActionButton: Icon(Icons.more, color: Colors.white),
    );
  }
}
