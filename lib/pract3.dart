import 'package:flutter/material.dart';

class C extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 3, child: 
    Scaffold(backgroundColor: Colors.brown,
      appBar: AppBar(title: Text('whatsapp'),backgroundColor: Color.fromARGB(136, 0, 0, 0)),
      body: Column(
        children: [
          TabBar(labelColor: Colors.green[700],unselectedLabelColor: Colors.white,
            tabs: [Tab(icon: Icon(Icons.apartment),child: Text('jdhbfhbfbdjfdjnfjdhfbhdbfhbdvhhhfuhfuefefhh'),),
            Tab(icon: Icon(Icons.apartment),child: Text('jdujuhufuhfujfijfigiuguhfughugujhj'),),
            Tab(icon: Icon(Icons.apartment),child: Text('hdhfbhdfhdbffhdhhfdhvvuuh'),)]
            ),
        TabBar(
        tabs: [Tab(child: Text(
          'jdhbfhbfbdj\nfdjnfjdhfbhdbfhbdvhhhfuh\nfuefefhh\nksdkj'),),
        Tab(child: Text('jdujuhufuhf\nujfijfigiuguhfughugujhj'),),
        Tab(child: Text('hdhfbhdf\nhdbffhdhhfd\nhvvuuh'),)]
        ),]
      ),
    )
    );
  }

}