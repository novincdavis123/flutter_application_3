import 'package:flutter/material.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';

void main() {
  runApp(MaterialApp(
    useInheritedMediaQuery: true,
    theme: ThemeData(primarySwatch: Colors.green),
    debugShowCheckedModeBanner: false,
    home: SplashScreen(),
  ));
}

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(
          title: new Text('welcome'),
        ),
         bottomNavigationBar: ConvexAppBar(backgroundColor: Colors.yellow,color: Colors.pink,
          items: [
            TabItem(icon: Icons.home, title: 'Home'),
            TabItem(icon: Icons.map, title: 'Discovery'),
            TabItem(icon: Icons.add, title: 'Add'),
            TabItem(icon: Icons.message, title: 'Message'),
            TabItem(icon: Icons.people, title: 'Profile'),
          ],
          onTap: (int i) => print('click index=$i'),
        )
       );
  }
}
