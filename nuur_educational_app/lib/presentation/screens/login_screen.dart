import 'package:flutter/material.dart';

import 'package:flutter_signin_button/button_list.dart';
import 'package:flutter_signin_button/button_view.dart';
import 'package:nuur_educational_app/presentation/color_manager.dart';
import 'package:nuur_educational_app/presentation/screens/signin_screen.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              CircleAvatar(
                child: Image(
                  image: AssetImage(''),
                ),
              ),
              TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Input your email',
                    hintStyle: TextStyle(color: Colors.grey)),
              ),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Input your password',
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text('Sign in'),
              ),
              Text('Or'),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: ((context) => SignInPage())),
                    );
                  },
                  child: Text('Sign up')),
              SizedBox(height: 30),
              Column(
                children: [
                  SignInButton(
                    Buttons.Google,
                    onPressed: () {},
                  ),
                  SizedBox(height: 5),
                  SignInButton(
                    Buttons.Facebook,
                    onPressed: () {},
                  ),
                  SizedBox(height: 5),
                  SignInButton(
                    Buttons.LinkedIn,
                    onPressed: () {},
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
