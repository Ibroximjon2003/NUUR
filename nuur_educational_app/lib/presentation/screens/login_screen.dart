import 'package:flutter/material.dart';

import 'package:flutter_signin_button/button_list.dart';
import 'package:flutter_signin_button/button_view.dart';
import 'package:nuur_educational_app/presentation/color_manager.dart';
import 'package:nuur_educational_app/presentation/screens/onboarding_screen.dart';
import 'package:nuur_educational_app/presentation/screens/signin_screen.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.primary,
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              const CircleAvatar(
                child: Image(
                  image: AssetImage('assets/images.jpg'),
                ),
              ),
              const TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Input your email',
                    hintStyle: TextStyle(color: Colors.grey)),
              ),
              const TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Input your password',
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: ((context) => OnBoardingScreen())),
                  );
                },
                child: const Text('Sign in'),
              ),
              const Text('Or'),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: ((context) => const SignUpPage())),
                    );
                  },
                  child: const Text('Sign up')),
              const SizedBox(height: 30),
              Column(
                children: [
                  SignInButton(
                    Buttons.Google,
                    onPressed: () {},
                  ),
                  const SizedBox(height: 5),
                  SignInButton(
                    Buttons.Facebook,
                    onPressed: () {},
                  ),
                  const SizedBox(height: 5),
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
