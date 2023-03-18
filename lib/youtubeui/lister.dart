import 'package:flutter/material.dart';
import 'package:flutter_application_3/youtubeui/youdemo.dart';

class Youlis extends StatelessWidget {
  var list1 = [
    'https://images.unsplash.com/photo-1595967444215-4901e8436909?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8YnV0dGVyZmx5fGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1587405254461-abd1d1c7440e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTB8fGJ1dHRlcmZseXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1623474237394-055b5c5b9095?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTV8fGJ1dHRlcmZseXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1546345414-16d37d6baa05?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTh8fGJ1dHRlcmZseXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60'
  ];
  var list2 = [
    'https://images.unsplash.com/photo-1544005313-94ddf0286df2?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8cGVyc29ufGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1504593811423-6dd665756598?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTh8fHBlcnNvbnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1599566150163-29194dcaad36?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjB8fHBlcnNvbnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1580489944761-15a19d654956?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjR8fHBlcnNvbnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60'
  ];
  var list3 = [
    'Top 5 Butterflies in the world',
    'How to catch a Butterfly',
    'Flying is easy',
    'Beautiful creatures of the planet',
  ];
  var list4 = [
    'Elena Pa - 10K views - about a year ago',
    'Robert Cv - 50K views - about a year ago',
    'Jefrin Dj - 30K views - about a year ago',
    'Anna Jk - 20K views - about a year ago',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: 4,
        itemBuilder: (BuildContext context, int index) {
          return InkWell(
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => Dem()));
            },
            child: Container(
              child: Column(
                children: [
                  Stack(children: [
                    Container(
                        height: 200,
                        width: 500,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(list1[index])))),
                    Positioned(
                        left: 450,
                        top: 170,
                        child: Container(
                            color: Colors.black,
                            child: Text(
                              '2:21',
                              style: TextStyle(color: Colors.white),
                            )))
                  ]),
                  ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(list2[index]),
                    ),
                    title: Text(list3[index]),
                    subtitle: Text(list4[index]),
                    trailing: IconButton(
                        onPressed: () {}, icon: Icon(Icons.more_vert)),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
