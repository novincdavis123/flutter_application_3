import 'package:flutter/material.dart';

class Customdemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('bigger better')),
      body: ListView.custom(
        // childrenDelegate: SliverChildBuilderDelegate((Buildcontext, index){ 
        //   return Card(
        //     color: Colors.blueGrey,
        //     child: Text('Card1'),
        //   );
        // }
        // )
        // childrenDelegate: SliverChildListDelegate(
        //   List.generate(100, (index){
        //     return Card(
        //       color: Colors.black,
        //       child: Center(child: Text('Card1',style: TextStyle(color: Colors.white))),
        //     );
        //   } )
        // ),
        childrenDelegate: SliverChildListDelegate(
          [Card(child: Center(child: Text('card1'))),
          Card(child: Center(child: Text('card2'))),
          Card(child: Center(child: Text('card3'))),
          Card(child: Center(child: Text('card4'))),
          ]
        ),
        ),
    );
  }

}