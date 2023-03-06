import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Musify extends StatelessWidget {
  var images = [
    NetworkImage(
        'https://images.unsplash.com/photo-1504898770365-14faca6a7320?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mzl8fG11c2ljfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60'),
    NetworkImage(
        'https://images.unsplash.com/photo-1619961602105-16fa2a5465c2?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8ODB8fG11c2ljfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60'),
    NetworkImage(
        'https://images.unsplash.com/photo-1520166012956-add9ba0835cb?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTc4fHxtdXNpY3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: ListView(
        children: [
          Center(
              child: Text('Musify.',
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.pink.shade100))),
          Padding(
            padding: const EdgeInsets.only(left: 10, top: 10),
            child: Text('Suggested playlists',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.pink.shade100)),
          ),
          CarouselSlider(
            items: List.generate(3, (index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
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
          Padding(
            padding: const EdgeInsets.only(left: 10, top: 10),
            child: Text('Recommended for you',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.pink.shade100)),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: ListTile(
                leading: Image(
                    image: NetworkImage(
                        'https://images.unsplash.com/photo-1470225620780-dba8ba36b745?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8bXVzaWN8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60')),
                title:
                    Text('Hero', style: TextStyle(color: Colors.pink.shade100)),
                subtitle:
                    Text('Taylor Swift', style: TextStyle(color: Colors.white)),
                trailing: Wrap(
                  children: [
                    Icon(Icons.star_border, color: Colors.pink.shade100),
                    SizedBox(width: 10),
                    Icon(Icons.download_outlined, color: Colors.pink.shade100),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: ListTile(
                leading: Image(
                    image: NetworkImage(
                        'https://images.unsplash.com/photo-1511379938547-c1f69419868d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8bXVzaWN8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60')),
                title: Text('Unholy',
                    style: TextStyle(color: Colors.pink.shade100)),
                subtitle: Text('Sam Smith,Kim Petras',
                    style: TextStyle(color: Colors.white)),
                trailing: Wrap(
                  children: [
                    Icon(Icons.star_border, color: Colors.pink.shade100),
                    SizedBox(width: 10),
                    Icon(Icons.download_outlined, color: Colors.pink.shade100),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: ListTile(
                leading: Image(
                    image: NetworkImage(
                        'https://images.unsplash.com/photo-1487180144351-b8472da7d491?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTZ8fG11c2ljfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60')),
                title: Text('Lift Me Up',
                    style: TextStyle(color: Colors.pink.shade100)),
                subtitle:
                    Text('Rihanna', style: TextStyle(color: Colors.white)),
                trailing: Wrap(
                  children: [
                    Icon(Icons.star_border, color: Colors.pink.shade100),
                    SizedBox(width: 10),
                    Icon(Icons.download_outlined, color: Colors.pink.shade100),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: ListTile(
                leading: Image(
                    image: NetworkImage(
                        'https://images.unsplash.com/photo-1506157786151-b8491531f063?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTh8fG11c2ljfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60')),
                title: Text('"Depression"',
                    style: TextStyle(color: Colors.pink.shade100)),
                subtitle: Text('Dax', style: TextStyle(color: Colors.white)),
                trailing: Wrap(
                  children: [
                    Icon(Icons.star_border, color: Colors.pink.shade100),
                    SizedBox(width: 10),
                    Icon(Icons.download_outlined, color: Colors.pink.shade100),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: ListTile(
                leading: Image(
                    image: NetworkImage(
                        'https://images.unsplash.com/photo-1421217336522-861978fdf33a?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mjl8fG11c2ljfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60')),
                title: Text('I\'m Good',
                    style: TextStyle(color: Colors.pink.shade100)),
                subtitle: Text('Davis Guetta & Bebe Rexha',
                    style: TextStyle(color: Colors.white)),
                trailing: Wrap(
                  children: [
                    Icon(Icons.star_border, color: Colors.pink.shade100),
                    SizedBox(width: 10),
                    Icon(Icons.download_outlined, color: Colors.pink.shade100),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
