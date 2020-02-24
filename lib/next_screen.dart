import 'package:flutter/material.dart';

class NextScreen extends StatelessWidget {
  static String routeName = '/next';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Next Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Next Screen',
              style: TextStyle(fontSize: 24, color: Colors.amber),
            )
          ],
        ),
      ),
    );
  }
}
