import 'package:flutter/material.dart';

class Draw extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Drawer'),
      ),
      drawer: Drawer(
        child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Colors.orange.shade300, Colors.red.shade900])),
          child: ListView(children: [
            const Padding(
              padding: EdgeInsets.only(top: 30),
              child: ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://images.unsplash.com/photo-1599566150163-29194dcaad36?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjB8fHBlcnNvbnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=1400&q=60"),
                ),
                title: Text("Alan Paul"),
                subtitle: Text("alanpaul@gmail.com"),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 30),
              child: ListTile(
                leading: Icon(Icons.space_dashboard_outlined),
                title: Text('Dashboard'),
              ),
            ),
            const ListTile(
              leading: Icon(Icons.leak_add_sharp),
              title: Text('Leads'),
            ),
            const ListTile(
              leading: Icon(Icons.people_outline),
              title: Text('Clients'),
            ),
            const ListTile(
              leading: Icon(Icons.rocket_launch),
              title: Text('Projects'),
            ),
            const ListTile(
              leading: Icon(Icons.man),
              title: Text('Patients'),
            ),
            const ListTile(
              leading: Icon(Icons.subscriptions),
              title: Text('Subscription'),
            ),
            const ListTile(
              leading: Icon(Icons.payments),
              title: Text('Payments'),
            ),
            const ListTile(
              leading: Icon(Icons.supervised_user_circle_outlined),
              title: Text('Users'),
            ),
            const ListTile(
              leading: Icon(Icons.local_library_outlined),
              title: Text('Library'),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 40, left: 20, right: 20),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                  ),
                  onPressed: () {},
                  child: const Text('Log out')),
            ),
          ]),
        ),
      ),
    );
  }
}
