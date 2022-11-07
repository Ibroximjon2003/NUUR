import 'package:flutter/material.dart';
import 'package:nuur_educational_app/presentation/color_manager.dart';

class Menu extends StatelessWidget {
  const Menu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        title: Text('NUUR'),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Card(
                      color: ColorManager.primary,
                      child: Row(
                        children: [
                          Image(image: AssetImage('assets/profile.jpg')),
                          Text('Profile'),
                        ],
                      ),
                    ),
                    flex: 2,
                  ),
                  Expanded(
                    child: Card(
                      color: ColorManager.primary,
                      child: Container(
                        child: Row(children: [
                          Text('Words'),
                          Container(
                            child: Icon(IconData(4)),
                          ),
                        ]),
                      ),
                    ),
                    flex: 1,
                  ),
                ],
              ),
            ),
            Expanded(
              child: Card(
                color: ColorManager.primary,
                child: Row(
                  children: [
                    ImageIcon(
                      AssetImage('assets/images.jpg'),
                    ),
                    Text('Lessons'),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Card(
                color: ColorManager.primary,
                child: Row(
                  children: [
                    Text('Interactive & Intensive'),
                    ImageIcon(
                      AssetImage('assets/images.jpg'),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Card(
                color: ColorManager.primary,
                child: Row(
                  children: [
                    Expanded(
                      child: Card(
                        child: Image(image: AssetImage('assets/images.jpg')),
                      ),
                      flex: 1,
                    ),
                    Expanded(
                      child: Card(
                        color: ColorManager.primary,
                        child: Row(
                          children: [
                            Text('Triumphs'),
                            Image(image: AssetImage('assets/images.jpg')),
                          ],
                        ),
                      ),
                      flex: 2,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
