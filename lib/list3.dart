import 'package:flutter/material.dart';

class Stat extends StatelessWidget {
  var list1 = [
    Icon(Icons.person_add),
    CircleAvatar(
      radius: 20,
      backgroundImage: NetworkImage(
          'https://images.unsplash.com/photo-1599566150163-29194dcaad36?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjB8fHBlcnNvbnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=1400&q=60'),
    ),
    CircleAvatar(
      radius: 20,
      backgroundImage: NetworkImage(
          'https://images.unsplash.com/photo-1508214751196-bcfd4ca60f91?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NzR8fHBlcnNvbnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60'),
    ),
    CircleAvatar(
      radius: 20,
      backgroundImage: NetworkImage(
          'https://images.unsplash.com/photo-1614880353165-e56fac2ea9a8?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8ODF8fHBlcnNvbnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60'),
    ),
    CircleAvatar(
      radius: 20,
      backgroundImage: NetworkImage(
          'https://images.unsplash.com/photo-1564564321837-a57b7070ac4f?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8ODZ8fHBlcnNvbnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60'),
    ),
  ];
  var list2 = [
    Text('My Status'),
    Text('Akhil chettan'),
    Text('Chinnukutty'),
    Text('rejeesha chechi'),
    Text('Vijayettan'),
  ];
  var list3 = [
    Text('24 minutes ago'),
    Text('57 minutes ago'),
    Text('59 minutes ago'),
    Text('Yesterday,23:44'),
    Text('Yesterday,22:43'),
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
