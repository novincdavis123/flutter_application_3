import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class Newstag extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: StaggeredGrid.count(crossAxisCount: 4,
            mainAxisSpacing: 4,
            crossAxisSpacing: 4,
            children: [
              StaggeredGridTile.count(mainAxisCellCount: 3,crossAxisCellCount: 2,child: Card(
                child: Column(children: const [Image(image: NetworkImage(
                  'https://images.unsplash.com/photo-1673520587276-77478c8f0151?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDV8NnNNVmpUTFNrZVF8fGVufDB8fHx8&auto=format&fit=crop&w=1400&q=60')),
                  Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Text('Mysteries of the Uni...',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text('20 Jun 2013\nCarl Sagan'),
                  )
                  ])
              ),),
              StaggeredGridTile.count(mainAxisCellCount: 4,crossAxisCellCount: 2,child: Card(
                child: Column(children: const [Image(image: NetworkImage(
                  'https://images.unsplash.com/photo-1503410781609-75b1d892dd28?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTF8fGV1cm9wZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=1400&q=60')),
                  Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Text('An Empire State of ...',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text('19 Jun 2013\nErnest Hemingway'),
                  )
                  ])
              ),),
              StaggeredGridTile.count(mainAxisCellCount: 3,crossAxisCellCount: 2,child: Card(
                child: Column(children: const [Image(width: 400,image: NetworkImage(
                  'https://images.unsplash.com/photo-1537182534312-f945134cce34?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MzN8fHRhYmxlfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=1400&q=60')),
                  Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Text('10 Tips for Hipster T...',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text('10 May 2013\nVincent Van Gogh'),
                  )
                  ])
              ),),
              StaggeredGridTile.count(mainAxisCellCount: 4,crossAxisCellCount: 2,child: Card(
                child: Column(children: const [Image(width: 400,image: NetworkImage(
                  'https://images.unsplash.com/photo-1604061986761-d9d0cc41b0d1?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NTF8fHRhYmxlfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=1400&q=60')),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text('My Story of Climbing..',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text('22 December 2015\nVil Ghal'),
                  )
                  ])
              ),),
              StaggeredGridTile.count(mainAxisCellCount: 3,crossAxisCellCount: 2,child: Card(
                child: Column(children: const [Image(width: 400,image: NetworkImage(
                  'https://images.unsplash.com/photo-1480348709911-be15f2c579ff?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NTh8fHRhYmxlfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=1400&q=60')),
                  Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Text('The State of...',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text('12 July 2018\njerome Gilbert'),
                  )
                  ])),),
              StaggeredGridTile.count(mainAxisCellCount: 4,crossAxisCellCount: 2,child: Card(
                child: Column(children: const [Image(width: 400,image: NetworkImage(
                  'https://images.unsplash.com/photo-1567074994308-df304d5611db?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8a3V3YWl0fGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=1400&q=60')),
                  Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Text('The Best 5 Tricks...',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text('30 January 2020\nModric Wilson'),
                  )
                  ])
              ),),
            ],
          )),
    );
  }
}