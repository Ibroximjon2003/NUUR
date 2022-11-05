import 'package:flutter/animation.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:nuur_educational_app/app/app.dart';

class Test extends StatelessWidget {
  const Test({super.key});
  void updateAppState() {
    MyApp.instance.appState == 0;
  }

  void getAppState() {
    print(MyApp.instance.appState);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFFB39CD0),
    );
  }
}
