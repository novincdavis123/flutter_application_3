import 'package:flutter/material.dart';

class Chat extends StatelessWidget {
  var list1 = [
    CircleAvatar(
      radius: 20,
      backgroundImage: NetworkImage(
          'https://images.unsplash.com/photo-1599566150163-29194dcaad36?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjB8fHBlcnNvbnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=1400&q=60'),
    ),
    CircleAvatar(
      radius: 20,
      backgroundImage: NetworkImage(
          'https://images.unsplash.com/photo-1560250097-0b93528c311a?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NDV8fHBlcnNvbnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60'),
    ),
    CircleAvatar(
      radius: 20,
      backgroundImage: NetworkImage(
          'https://images.unsplash.com/photo-1534528741775-53994a69daeb?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NDZ8fHBlcnNvbnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60'),
    ),
    CircleAvatar(
      radius: 20,
      backgroundImage: NetworkImage(
          'https://images.unsplash.com/photo-1589571894960-20bbe2828d0a?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NTh8fHBlcnNvbnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60'),
    ),
    CircleAvatar(
      radius: 20,
      backgroundImage: NetworkImage(
          'https://images.unsplash.com/photo-1529626455594-4ff0802cfb7e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NjN8fHBlcnNvbnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60'),
    ),
    CircleAvatar(
      radius: 20,
      backgroundImage: NetworkImage(
          'https://images.unsplash.com/photo-1506794778202-cad84cf45f1d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NzB8fHBlcnNvbnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60'),
    ),
    CircleAvatar(
      radius: 20,
      backgroundImage: NetworkImage(
          'https://images.unsplash.com/photo-1540569014015-19a7be504e3a?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NzV8fHBlcnNvbnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60'),
    ),
    CircleAvatar(
      radius: 20,
      backgroundImage: NetworkImage(
          'https://images.unsplash.com/photo-1531746020798-e6953c6e8e04?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nzl8fHBlcnNvbnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60'),
    ),
  ];
  var list2 = [
    Text('Rajesh kumar'),
    Text('Ravindran menon'),
    Text('Akshaya john'),
    Text('Sruthy vijayan'),
    Text('Melena tony'),
    Text('Ravindrnad Tabore'),
    Text('Sachin roy'),
    Text('anagha tennison'),
  ];
  var list3 = [
    Text('Flutter is cool'),
    Text('Coding is amazing'),
    Text('Good morning'),
    Text('Hello sir'),
    Text('Welcome to kochi'),
    Text('Nice to meet you,have a nice day!'),
    Text('Very crazy friend'),
    Text('Good night,sweet dreams'),
  ];
  var list4 = [
    Text('12:00 pm'),
    Text('Yesterday'),
    Text('7:46 pm'),
    Text('Yesterday'),
    Text('2/22/20'),
    Text('12:37 am'),
    Text('Yesterday'),
    Text('7:50 am'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: const Icon(Icons.message),
        ),
        body: ListView.builder(
            itemCount: 8,
            itemBuilder: (BuildContext, index) {
              return Container(
                  child: ListTile(
                leading: list1[index],
                title: list2[index],
                subtitle: list3[index],
                trailing: list4[index],
              ));
            }));
  }
}
