import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:nuur_educational_app/presentation/color_manager.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Onboarding Screen'),
      ),
      backgroundColor: ColorManager.primary,
      body: SafeArea(
        child: Column(
          children: [
            CardWidget(),
            CardWidget(),
            CardWidget(),
            CardWidget(),
            CardWidget(),
            CardWidget(),
            CardWidget(),
            CardWidget(),
            CardWidget(),
            CardWidget(),
          ],
        ),
      ),
    );
  }
}

class CardWidget extends StatelessWidget {
  const CardWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        children: [
          CircleAvatar(
            child: Image(image: AssetImage('assets/images.jpg')),
          ),
        ],
      ),
    );
  }
}
