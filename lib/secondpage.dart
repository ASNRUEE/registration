import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
   SecondPage({super.key,required this.username, required this.fullname, required this.city, required this.email, required this.password});

String username;
String fullname;
String city;
String email;
String password;



  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('secondpage'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(username),
          Text(fullname),
          Text(city),
          Text(email),
          Text(password),

        ],
      ),
    );
  }
}
