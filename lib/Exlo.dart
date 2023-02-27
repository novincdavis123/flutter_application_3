import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

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
            child: Padding(
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
              ]),
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
                    'https://assets3.lottiefiles.com/packages/lf20_FpLUwguoSs.json',
                    height: 150,
                    width: 500,
                    fit: BoxFit.fill),
              ),
              Positioned(
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
            ]),
          ),
        ],
      ),
      floatingActionButton: Icon(Icons.more, color: Colors.white),
    );
  }
}
