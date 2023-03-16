import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_snake_navigationbar/flutter_snake_navigationbar.dart';

class Hotel2 extends StatefulWidget {
  @override
  State<Hotel2> createState() => _Hotel2State();
}

class _Hotel2State extends State<Hotel2> {
  var list1 = [
    'https://images.unsplash.com/photo-1618773928121-c32242e63f39?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OHx8aG90ZWx8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1444201983204-c43cbd584d93?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTh8fGhvdGVsfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1611892440504-42a792e24d32?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTZ8fGhvdGVsfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1512918728675-ed5a9ecdebfd?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mjd8fGhvdGVsfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60'
  ];
  var list2 = ['Crown Plaza', 'Hotel Merriot', 'HolyDayln', 'Marriot'];
  var list3 = [
    'A 5 star Hotel in...',
    'A 4 star Hotel in...',
    'A 3 star Hotel in...',
    'A 5 star Hotel in...'
  ];
  var snakeShape;
  var selectedColor;
  var showUnselectedLabels = true;
  var showSelectedLabels = true;
  var _selectedItemPosition = 0;
  var selectedGradient =
      LinearGradient(colors: [Colors.red, Colors.yellow, Colors.orange]);
  var unselectedGradient =
      LinearGradient(colors: [Colors.green, Colors.purple, Colors.pink]);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: ListTile(
                leading: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Hello @rjun', style: TextStyle(color: Colors.grey)),
                    Text('Find Your Favourite Hotel',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                  ],
                ),
                trailing: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image(
                      image: NetworkImage(
                          'https://images.unsplash.com/photo-1494959764136-6be9eb3c261e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTZ8fHBlcnNvbnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60')),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(width: 0, style: BorderStyle.none)),
                filled: true,
                fillColor: Color.fromARGB(255, 235, 226, 226),
                hintText: "Search For Hotel",
                prefixIcon: IconButton(
                  icon: Icon(Icons.search),
                  onPressed: () {},
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Popular Hotel',
                style: TextStyle(fontWeight: FontWeight.bold)),
          ),
          CarouselSlider(
            items: List.generate(4, (index) {
              return Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                            height: 150,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: NetworkImage(list1[index])))),
                        Text(
                          list2[index],
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(list3[index]),
                        Row(
                          children: [
                            Text('\$180/night',
                                style: TextStyle(color: Colors.blue)),
                            SizedBox(width: 60),
                            Text('4.5', style: TextStyle(color: Colors.blue)),
                            Icon(Icons.star, color: Colors.blue)
                          ],
                        ),
                      ]));
            }),
            options: CarouselOptions(
              height: 230,
              pauseAutoPlayInFiniteScroll: true,
              autoPlay: false,
              viewportFraction: .4,
              aspectRatio: 16 / 7,
              initialPage: 2,
            ),
          ),
          Container(
            child: ListTile(
              leading: Text('Hotel Packages',
                  style: TextStyle(fontWeight: FontWeight.bold)),
              trailing: Text('View All', style: TextStyle(color: Colors.blue)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListView.builder(
                shrinkWrap: true,
                itemCount: 4,
                itemBuilder: ((context, index) {
                  return Card(
                    child: Row(
                      children: [
                        Container(
                          height: 80,
                          width: 100,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: NetworkImage(list1[index]))),
                        ),
                        SizedBox(height: 60, width: 70),
                        Column(
                          children: [
                            Text(list2[index],
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            Text(list3[index]),
                            Text('\$180/night',
                                style: TextStyle(color: Colors.blue)),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child:
                                      Icon(Icons.car_crash, color: Colors.blue),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Icon(Icons.headphones_battery_outlined,
                                      color: Colors.blue),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Icon(Icons.no_drinks_outlined,
                                      color: Colors.blue),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Icon(Icons.wifi, color: Colors.blue),
                                ),
                              ],
                            ),
                          ],
                        ),
                        ElevatedButton(
                            onPressed: () {},
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text('Book'),
                            ))
                      ],
                    ),
                  );
                })),
          ),
        ],
      ),
      bottomNavigationBar: SnakeNavigationBar.gradient(
        ///configuration for SnakeNavigationBar.color
        // snakeViewColor: Colors.green,
        // selectedItemColor:
        //     snakeShape == SnakeShape.indicator ? selectedColor : null,
        // unselectedItemColor: Colors.blueGrey,

        ///configuration for SnakeNavigationBar.gradient
        snakeViewGradient: selectedGradient,
        selectedItemGradient:
            snakeShape == SnakeShape.indicator ? selectedGradient : null,
        unselectedItemGradient: unselectedGradient,

        showUnselectedLabels: showUnselectedLabels,
        showSelectedLabels: showSelectedLabels,

        currentIndex: _selectedItemPosition,
        onTap: (index) => setState(() => _selectedItemPosition = index),
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Explore'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile')
        ],
      ),
    );
  }
}
