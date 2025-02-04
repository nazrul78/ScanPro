import 'package:flutter/material.dart';
import 'package:scan_pro/src/config/app_theme.dart';

class DocumentPage extends StatefulWidget {
  const DocumentPage({super.key});

  @override
  State<DocumentPage> createState() => _DocumentPageState();
}

class _DocumentPageState extends State<DocumentPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.appThemeColor,
      body: Center(
        child: Text(
          'Document Page',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
