import 'package:flutter/material.dart';

class Calls extends StatelessWidget {
  var list1 = [
    const CircleAvatar(
      radius: 20,
      backgroundImage: NetworkImage(
          'https://images.unsplash.com/photo-1545167622-3a6ac756afa4?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTA5fHxwZXJzb258ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60'),
    ),
    const CircleAvatar(
      radius: 20,
      backgroundImage: NetworkImage(
          'https://images.unsplash.com/photo-1597586124394-fbd6ef244026?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTE4fHxwZXJzb258ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60'),
    ),
    const CircleAvatar(
      radius: 20,
      backgroundImage: NetworkImage(
          'https://images.unsplash.com/photo-1534030347209-467a5b0ad3e6?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTIxfHxwZXJzb258ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60'),
    ),
    const CircleAvatar(
      radius: 20,
      backgroundImage: NetworkImage(
          'https://images.unsplash.com/photo-1552374196-c4e7ffc6e126?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTMwfHxwZXJzb258ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60'),
    ),
    const CircleAvatar(
      radius: 20,
      backgroundImage: NetworkImage(
          'https://images.unsplash.com/photo-1563584316028-2b70b3a3a8bf?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTM2fHxwZXJzb258ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60'),
    ),
  ];
  var list2 = [
    const Text('Adharsh das'),
    const Text('Raveena krishnan'),
    const Text('Praveen kumar'),
    const Text('Varghese chirayath'),
    const Text('Madhavan kattungal'),
  ];
  var list3 = [
    Row(
      children:const [
         Icon(Icons.call_received, color: Colors.green),
         Text('Yesterday,18:40'),
      ],
    ),
    Row(
      children:const [
         Icon(Icons.call_received, color: Colors.green),
         Text('March24,18:26'),
      ],
    ),
    Row(
      children: const [
        Icon(Icons.call_received, color: Colors.green),
        Text('April19,14:06'),
      ],
    ),
    Row(
      children: const [
        Icon(Icons.call_received, color: Colors.green),
        Text('February20,21:33'),
      ],
    ),
    Row(
      children: const [
        Icon(Icons.call_received, color: Colors.green),
        Text('February20,20:30'),
      ],
    ),
  ];
  var list4 = [
    const Icon(Icons.phone, color: Colors.green),
    const Icon(Icons.phone, color: Colors.green),
    const Icon(Icons.phone, color: Colors.green),
    const Icon(Icons.phone, color: Colors.green),
    const Icon(Icons.phone, color: Colors.green)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: const Icon(Icons.add_call),
        ),
        body: ListView.builder(
            itemCount: 5,
            itemBuilder: (BuildContext, index) {
              return Container(
                  child: ListTile(
                      leading: list1[index],
                      title: list2[index],
                      subtitle: list3[index],
                      trailing: list4[index]));
            }));
  }
}
