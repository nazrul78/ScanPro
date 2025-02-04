import 'package:flutter/material.dart';
import 'package:scan_pro/src/config/app_theme.dart';

class PersonPage extends StatefulWidget {
  const PersonPage({super.key});

  @override
  State<PersonPage> createState() => _PersonPageState();
}

class _PersonPageState extends State<PersonPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.appThemeColor,
      body: Center(
        child: Text(
          'Person Page',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
