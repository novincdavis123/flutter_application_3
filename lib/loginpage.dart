import 'package:flutter/material.dart';
import 'package:flutter_application_3/welcomepage.dart';

class LoginPage extends StatefulWidget{
  @override
  State<LoginPage> createState() => _LoginPageState();
}
class _LoginPageState extends State<LoginPage> {
var formkey=GlobalKey<FormState>();
var showpass=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('login with validation')),
      body: Form(
        key: formkey,
        child: Column(
        children: [Text('login page',style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),),
        Padding(
          padding: const EdgeInsets.only(right: 30,left: 30,top: 20,bottom: 20),
          child: TextFormField(
            decoration: InputDecoration(
              prefixIcon:Icon(Icons.account_box_sharp),
              border: OutlineInputBorder()),
              validator: (username){
                if(username!.isEmpty|| !username.contains('@')){
                  return 'enter a alid email';
                }else{
                  return null;
                }
              },
              ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 30,left: 30,bottom: 20),
          child: TextFormField(
            obscureText: showpass,
            obscuringCharacter: '#',
            decoration: InputDecoration(
              prefixIcon:Icon(Icons.password),
              suffixIcon: IconButton(onPressed: (){
                setState(() {
                  if(showpass){
                    showpass=false;
                  }else{
                    showpass=true;
                  }
                });
              }, icon: Icon(showpass==true?Icons.visibility_off:Icons.visibility)),
            border: OutlineInputBorder()),
            validator: (password){
            if(password!.isEmpty|| password.length<6){
              return 'not a valid password';
            }else{
              return null;
            }
            }
            ),
        ),
        ElevatedButton(onPressed: (){
          final valid=formkey.currentState!.validate();
          if(valid){
            Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => Welcomepage()));
          }else{
            return null;
          }
        }, child: Text('login'))
        ],
      ),)
      );
  }
}