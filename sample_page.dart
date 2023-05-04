import 'package:flutter/material.dart';

class SamplePage extends StatelessWidget {
  final pageData;

  const SamplePage({Key? key, required this.pageData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('$pageData'),),
      body: Center(
        child: Text(
          '$pageData',
          textScaleFactor: 2,
        ),
      ),
    );
  }
}
