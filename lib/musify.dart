import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Musify extends StatelessWidget {
  var images = [
    NetworkImage(
        'https://images.unsplash.com/photo-1473951574080-01fe45ec8643?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTB8fGV1cm9wZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60'),
    NetworkImage(
        'https://images.unsplash.com/photo-1499856871958-5b9627545d1a?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTV8fGV1cm9wZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60'),
    NetworkImage(
        'https://images.unsplash.com/photo-1471874708433-acd480424946?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTR8fGV1cm9wZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.black,
      body: ListView(
        children: [
          Center(child: Text('Musify.',style: TextStyle(
              fontWeight: FontWeight.bold, color: Colors.pink.shade100))),
              Padding(
                padding: const EdgeInsets.only(left: 10,top:20),
                child: Text('Suggested playlists',style: TextStyle(
              fontWeight: FontWeight.bold, color: Colors.pink.shade100)),
              ),
              CarouselSlider(
            items: List.generate(3, (index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                          image: images[index], fit: BoxFit.cover)),
                ),
              );
            }),
            options: CarouselOptions(
              height: 200,
              pauseAutoPlayInFiniteScroll: true,
              autoPlay: true,
              enlargeCenterPage: false,
              viewportFraction: .4,
              aspectRatio: 16 / 7,
              initialPage: 2,
            ),
          ),

        ],
      ),
    );
  }
}