import 'package:flutter/material.dart';

class Stat extends StatelessWidget {
  var list1 = [
    const CircleAvatar(
      radius: 20,
      backgroundImage: NetworkImage(
          'https://images.unsplash.com/photo-1544723795-3fb6469f5b39?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NDB8fHBlcnNvbnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=600&q=60'),
    ),
    const CircleAvatar(
      radius: 20,
      backgroundImage: NetworkImage(
          'https://images.unsplash.com/photo-1563240619-44ec0047592c?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTc1fHxwZXJzb258ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60'),
    ),
    const CircleAvatar(
      radius: 20,
      backgroundImage: NetworkImage(
          'https://images.unsplash.com/photo-1508214751196-bcfd4ca60f91?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NzR8fHBlcnNvbnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60'),
    ),
  ];
  var list2 = [
    const Text('Jonathan'),
    const Text('Akhil chettan'),
    const Text('Chinnukutty'),
  ];
  var list3 = [
    const Text('15 minutes ago'),
    const Text('57 minutes ago'),
    const Text('59 minutes ago'),
  ];
  var list4 = [
    const CircleAvatar(
      radius: 20,
      backgroundImage: NetworkImage(
          'https://images.unsplash.com/photo-1573496359142-b8d87734a5a2?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NDh8fHBlcnNvbnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=600&q=60'),
    ),
    const CircleAvatar(
      radius: 20,
      backgroundImage: NetworkImage(
          'https://images.unsplash.com/photo-1614786269829-d24616faf56d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NTV8fHBlcnNvbnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=600&q=60'),
    ),
    const CircleAvatar(
      radius: 20,
      backgroundImage: NetworkImage(
          'https://images.unsplash.com/photo-1519085360753-af0119f7cbe7?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NjZ8fHBlcnNvbnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=600&q=60'),
    ),
  ];
  var list5 = [
    const Text('andrea jeremy'),
    const Text('Vinnila benny'),
    const Text('Robert pattinson'),
  ];
  var list6 = [
    const Text('10 minutes ago'),
    const Text('50 minutes ago'),
    const Text('40 minutes ago'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: const Icon(Icons.camera_alt),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              ListTile(
                leading: Stack(children: const [
                  CircleAvatar(
                    radius: 25,
                    backgroundColor: Color.fromARGB(255, 255, 255, 255),
                    child: CircleAvatar(
                      radius: 20,
                      backgroundImage: NetworkImage(
                          'https://images.unsplash.com/photo-1599566150163-29194dcaad36?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjB8fHBlcnNvbnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=1400&q=60'),
                    ),
                  ),
                  Positioned(
                      right: 3,
                      bottom: 5,
                      child: CircleAvatar(
                          radius: 10,
                          backgroundColor: Colors.green,
                          child: Icon(
                            size: 15,
                            Icons.add,
                            color: Colors.white,
                          ))),
                ]),
                title: Text('My Status'),
                subtitle: Text('Tap to add status update'),
              ),
              Container(
                height: 30,
                width: double.infinity,
                color: const Color.fromARGB(255, 227, 226, 226),
                child: const Padding(
                  padding: EdgeInsets.only(top: 8, left: 15),
                  child: Text(
                    'Recent Updates',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                  ),
                ),
              ),
              ListView.builder(
                  shrinkWrap: true,
                  itemCount: 3,
                  itemBuilder: (BuildContext, index) {
                    return Container(
                        child: ListTile(
                            leading: list1[index],
                            title: list2[index],
                            subtitle: list3[index]));
                  }),
              Container(
                height: 30,
                width: double.infinity,
                color: const Color.fromARGB(255, 227, 226, 226),
                child: const Padding(
                  padding: EdgeInsets.only(top: 8, left: 15),
                  child: Text(
                    'Viewed Updates',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                  ),
                ),
              ),
              ListView.builder(
                  shrinkWrap: true,
                  itemCount: 3,
                  itemBuilder: (BuildContext, index) {
                    return Container(
                        child: ListTile(
                            leading: list4[index],
                            title: list5[index],
                            subtitle: list6[index]));
                  }),
            ],
          ),
        ));
  }
}
