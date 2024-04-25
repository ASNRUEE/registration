import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:registration/secondpage.dart';

class registration extends StatelessWidget {
   registration({super.key});

final usernameController = TextEditingController();
final fullnameController = TextEditingController();
final cityController = TextEditingController();
final emailController = TextEditingController();
final passwordConroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 300),
          child: Column(
            children: [
            CircleAvatar(
            radius: 100,
            backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSH3OdxGGatrIBgsYKD-neU8Vcko8Ju2NgT1UTQXBfxOw&s"),
          ),
              SizedBox(height: 20,),
              Text( 'REGISTRATION',
                    style: TextStyle(color: Colors.black,
          fontWeight: FontWeight.bold,
          fontSize: 18,
          decoration: TextDecoration.underline,
                    ),),
                    TextFormField(
                      controller: usernameController,
          decoration: const InputDecoration(
            border: UnderlineInputBorder(),
            labelText: 'Username',
          ),),
              TextFormField(
                controller: fullnameController,
                decoration: const InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: 'Full Name',
                ),),
              TextFormField(
                controller: cityController,
                decoration: const InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: 'City',
                ),),
              TextFormField(
                controller: emailController,
                decoration: const InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: 'E-mail',
                ),),
              TextFormField(
                controller: passwordConroller,
                decoration: const InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: 'Password',
                ),),
                SizedBox(height: 20,),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue
                  ),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) => SecondPage(
                        username: usernameController.text,
                        fullname: fullnameController.text,
                        city: cityController.text,
                        email: emailController.text,
                        password:passwordConroller.text,

                      )),
                    );



                    print(usernameController.text);
                    print(fullnameController.text);
                    print(cityController.text);
                    print(emailController.text);
                    print(passwordConroller.text);
              }, child: Text('REGISTER')),
              SizedBox(height: 10,),
              RichText(
                text: TextSpan(
                  text: "Don't have an account? ",
                  style: TextStyle(color: Colors.black),
                  children: [
                    TextSpan(
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                        },
                    ),
                  ],
                ),
              ),
            ]),
        ),
      ),
         );
           }
          }



