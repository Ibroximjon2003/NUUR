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
                          Flexible(
                            child: Image(
                              image: AssetImage('assets/profile.jpg'),
                              height: 70,
                              width: 70,
                            ),
                          ),
                          Text('Profile'),
                        ],
                      ),
                    ),
                    flex: 1,
                  ),
                  Expanded(
                    child: Card(
                      color: ColorManager.primary,
                      child: Row(children: [
                        Text('Words'),
                        Image(
                          image: AssetImage('assets/book.jpg'),
                        ),
                      ]),
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
                    CircleAvatar(
                      child: Image(
                        image: AssetImage('assets/lessons.jpg'),
                      ),
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
                    Image(
                      image: AssetImage('assets/interactive.jpg'),
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
                        child: Image(image: AssetImage('assets/settings.jpg')),
                      ),
                      flex: 1,
                    ),
                    Expanded(
                      child: Card(
                        color: ColorManager.primary,
                        child: Row(
                          children: [
                            Text('Triumphs'),
                            Image(image: AssetImage('assets/triumphs.jpg')),
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
