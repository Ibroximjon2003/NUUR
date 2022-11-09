import 'package:flutter/material.dart';
import 'package:nuur_educational_app/presentation/color_manager.dart';
import 'package:nuur_educational_app/presentation/screens/selecting_language.dart';

class StartingPage extends StatelessWidget {
  const StartingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.primary,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                  child: Image(image: AssetImage('assets/nuur_green.png'))),
              Expanded(
                  child: Image(
                      image:
                          AssetImage('assets/starting_page_all_country.webp'))),
              Expanded(
                  child: Text(
                'Start The Journey',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: ColorManager.primary_bold,
                ),
              )),
              Expanded(
                child: IconButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: ((context) => SelectingLanguage())));
                    },
                    icon: Image(image: AssetImage('assets/profile.jpg'))),
              )
            ],
          ),
        ),
      ),
    );
  }
}
