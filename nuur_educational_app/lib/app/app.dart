import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:nuur_educational_app/presentation/screens/login_screen.dart';

class MyApp extends StatefulWidget {
  MyApp._internal(); //private constructor
  static final MyApp instance =
      MyApp._internal(); //single instance -- singleton
  int appState = 0;
  factory MyApp() => instance; //facctory for the class instance

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return LoginPage();
  }
}
