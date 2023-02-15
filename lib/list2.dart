import 'package:flutter/material.dart';

class Chat extends StatelessWidget {
  var list1 = [
    const CircleAvatar(
      radius: 20,
      backgroundImage: NetworkImage(
          'https://images.unsplash.com/photo-1599566150163-29194dcaad36?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjB8fHBlcnNvbnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=1400&q=60'),
    ),
    const CircleAvatar(
      radius: 20,
      backgroundImage: NetworkImage(
          'https://images.unsplash.com/photo-1560250097-0b93528c311a?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NDV8fHBlcnNvbnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60'),
    ),
    const CircleAvatar(
      radius: 20,
      backgroundImage: NetworkImage(
          'https://images.unsplash.com/photo-1534528741775-53994a69daeb?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NDZ8fHBlcnNvbnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60'),
    ),
    const CircleAvatar(
      radius: 20,
      backgroundImage: NetworkImage(
          'https://images.unsplash.com/photo-1589571894960-20bbe2828d0a?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NTh8fHBlcnNvbnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60'),
    ),
    const CircleAvatar(
      radius: 20,
      backgroundImage: NetworkImage(
          'https://images.unsplash.com/photo-1529626455594-4ff0802cfb7e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NjN8fHBlcnNvbnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60'),
    ),
    const CircleAvatar(
      radius: 20,
      backgroundImage: NetworkImage(
          'https://images.unsplash.com/photo-1506794778202-cad84cf45f1d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NzB8fHBlcnNvbnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60'),
    ),
    const CircleAvatar(
      radius: 20,
      backgroundImage: NetworkImage(
          'https://images.unsplash.com/photo-1540569014015-19a7be504e3a?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NzV8fHBlcnNvbnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60'),
    ),
    const CircleAvatar(
      radius: 20,
      backgroundImage: NetworkImage(
          'https://images.unsplash.com/photo-1531746020798-e6953c6e8e04?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nzl8fHBlcnNvbnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60'),
    ),
  ];
  var list2 = [
    const Text('Rajesh kumar'),
    const Text('Ravindran menon'),
    const Text('Akshaya john'),
    const Text('Sruthy vijayan'),
    const Text('Melena tony'),
    const Text('Ravindrnad Tabore'),
    const Text('Sachin roy'),
    const Text('anagha tennison'),
  ];
  var list3 = [
    const Text('Flutter is cool'),
    const Text('Coding is amazing'),
    const Text('Good morning'),
    const Text('Hello sir'),
    const Text('Welcome to kochi'),
    const Text('Nice to meet you,have a nice day!'),
    const Text('Very crazy friend'),
    const Text('Good night,sweet dreams'),
  ];
  var list4 = [
    const Text('12:00 pm'),
    const Text('Yesterday'),
    const Text('7:46 pm'),
    const Text('Yesterday'),
    const Text('2/22/20'),
    const Text('12:37 am'),
    const Text('Yesterday'),
    const Text('7:50 am'),
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
