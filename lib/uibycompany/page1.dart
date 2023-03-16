import 'package:flutter/material.dart';

class Invoice extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(
                  "https://images.unsplash.com/photo-1524230572899-a752b3835840?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NTl8fGJhY2tncm91bmR8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60"),
              fit: BoxFit.cover),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.white),
                onPressed: () {},
                child: Icon(
                  Icons.arrow_back_ios,
                  color: Color.fromARGB(255, 7, 87, 153),
                ),
              ),
              SizedBox(height: 50),
              Text('Enter the invoice number',
                  style: TextStyle(color: Color.fromARGB(255, 7, 86, 150))),
              SizedBox(height: 10),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide:
                          BorderSide(width: 0, style: BorderStyle.none)),
                  filled: true,
                  fillColor: Colors.white,
                  hintText: "Eg:6846546546",
                ),
              ),
              SizedBox(height: 400),
              Row(
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        minimumSize: Size(240, 50),
                        backgroundColor: Colors.white),
                    onPressed: () {},
                    child: Center(
                      child: Row(
                        children: [
                          Icon(Icons.arrow_back_ios,
                              color: Color.fromARGB(255, 7, 87, 153)),
                          Text(
                            'Back',
                            style: TextStyle(
                                color: Color.fromARGB(255, 7, 87, 153)),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        minimumSize: Size(240, 50),
                        backgroundColor: Color.fromARGB(255, 7, 87, 153)),
                    onPressed: () {},
                    child: Center(
                      child: Row(
                        children: [
                          Text('Next'),
                          Icon(Icons.arrow_forward_ios, color: Colors.white),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
