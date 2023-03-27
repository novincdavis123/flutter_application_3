import 'package:flutter/material.dart';

class UI2 extends StatefulWidget {
  @override
  State<UI2> createState() => _UI2State();
}

class _UI2State extends State<UI2> {
  bool isDesktop(BuildContext context) {
      return MediaQuery.of(context).size.width >= 600;
  }
  bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < 600;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Row(
          children: [
            if(isDesktop(context))
            Container(
                color: Colors.blue,
                width: 200,
                child: Center(child: Text('Sidebar'))),
            Expanded(
                child: Container(
                    color: Colors.red, child: Center(child: Text('Content'))))
          ],
        ),
      ),
    );
  }
}
