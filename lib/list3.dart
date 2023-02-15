import 'package:flutter/material.dart';

class Stat extends StatelessWidget {
  var list1 = [
    Stack(children:const [
      CircleAvatar(
        radius: 20,
        backgroundImage: NetworkImage(
            'https://images.unsplash.com/photo-1599566150163-29194dcaad36?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjB8fHBlcnNvbnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=1400&q=60'),
      ),
      Positioned(
          left: 20,
          top: 15,
          child: CircleAvatar(
              radius: 10,
              backgroundColor: Colors.green,
              child: Icon(
                Icons.add,
                color: Colors.white,
              ))),
    ]),
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
    const CircleAvatar(
      radius: 20,
      backgroundImage: NetworkImage(
          'https://images.unsplash.com/photo-1614880353165-e56fac2ea9a8?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8ODF8fHBlcnNvbnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60'),
    ),
    const CircleAvatar(
      radius: 20,
      backgroundImage: NetworkImage(
          'https://images.unsplash.com/photo-1564564321837-a57b7070ac4f?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8ODZ8fHBlcnNvbnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60'),
    ),
  ];
  var list2 = [
    const Text('My Status'),
    const Text('Akhil chettan'),
    const Text('Chinnukutty'),
    const Text('rejeesha chechi'),
    const Text('Vijayettan'),
  ];
  var list3 = [
    const Text('Tap to add status update'),
    const Text('57 minutes ago'),
    const Text('59 minutes ago'),
    const Text('Yesterday,23:44'),
    const Text('Yesterday,22:43'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: const Icon(Icons.camera_alt),
        ),
        body: ListView.builder(
            itemCount: 5,
            itemBuilder: (BuildContext, index) {
              return Container(
                  child: ListTile(
                      leading: list1[index],
                      title: list2[index],
                      subtitle: list3[index]));
            }));
  }
}
