import 'package:flutter/material.dart';
import 'package:nuur_educational_app/presentation/color_manager.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorManager.primary,
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const CircleAvatar(
                  child: Image(
                    image: AssetImage('assets/nuur_green.png'),
                  ),
                ),
                const SizedBox(height: 40),
                const TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Input your email',
                  ),
                ),
                const TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Input your password',
                  ),
                ),
                const TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Re-enter your pasword',
                  ),
                ),
                const SizedBox(height: 40),
                ElevatedButton(onPressed: () {}, child: const Text('Submit')),
              ],
            ),
          ),
        ));
  }
}
