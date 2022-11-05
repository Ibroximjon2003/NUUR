import 'package:flutter/material.dart';

import 'package:nuur_educational_app/app/app.dart';

class Test extends StatelessWidget {
  const Test({super.key});
  void updateAppState() {
    MyApp.instance.appState == 0;
  }

  void getAppState() {
    MyApp.instance.appState;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFFB39CD0),
    );
  }
}
