import 'package:flutter/material.dart';
import 'package:flutter_snake_navigationbar/flutter_snake_navigationbar.dart';

class Hotel2 extends StatefulWidget {
  @override
  State<Hotel2> createState() => _Hotel2State();
}

class _Hotel2State extends State<Hotel2> {
  var snakeShape;
  var selectedColor;
  var showUnselectedLabels = true;
  var showSelectedLabels = true;
  var _selectedItemPosition = 0;
  var selectedGradient =
      LinearGradient(colors: [Colors.red, Colors.yellow, Colors.orange]);
  var unselectedGradient;
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
