import 'package:flag/flag.dart';
import 'package:flutter/material.dart';
import 'package:nuur_educational_app/presentation/color_manager.dart';
import 'package:nuur_educational_app/presentation/screens/login_screen.dart';
import 'package:nuur_educational_app/presentation/screens/selecting_learning_language.dart';

class LearningLanguage extends StatelessWidget {
  const LearningLanguage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.primary,
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 40),
              Card(
                color: ColorManager.primary_bold,
                child: Container(
                  alignment: Alignment.center,
                  height: 40,
                  child: Text(
                    'Choose your target language',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              Column(
                children: [
                  FlagRow(FlagsCode.UZ, FlagsCode.EG),
                  FlagRow(FlagsCode.RU, FlagsCode.DE),
                  FlagRow(FlagsCode.KZ, FlagsCode.GA),
                  FlagRow(FlagsCode.KG, FlagsCode.LA),
                  FlagRow(FlagsCode.GB, FlagsCode.SA),
                ],
              ),
              Card(
                color: Colors.white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                      child: Text('Next'),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: ((context) => LoginPage())));
                      },
                    ),
                    Icon(Icons.arrow_right_alt),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class FlagRow extends StatelessWidget {
  FlagRow(this.countryCode, this.countryCode1);
  FlagsCode countryCode;
  FlagsCode countryCode1;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Card(
          color: ColorManager.primary,
          child: Container(
            height: 40,
            width: 40,
            child: Flag.fromCode(countryCode),
          ),
        ),
        SizedBox(width: 60),
        Card(
          color: ColorManager.primary,
          child: Container(
            height: 40,
            width: 40,
            child: Flag.fromCode(countryCode1),
          ),
        ),
      ],
    );
  }
}
