import 'package:flutter/material.dart';

class PdfViewPage extends StatelessWidget {
  const PdfViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PDF'),
      ),
      body: Container(
        child: Center(
          child: Text('Hello'),
        ),
      ),
    );
  }
}
