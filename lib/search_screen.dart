import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bottom_navbar/next_screen.dart';

class SearchScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Search Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FlatButton(
              onPressed: () => _onPressedButton(context),
              child: Container(
                width: 200,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Center(
                    child: Text(
                  'next screen',
                  style: TextStyle(fontSize: 24, color: Colors.white),
                )),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _onPressedButton(context) {
    Navigator.of(context).push(
        MaterialPageRoute<NextScreen>(builder: (context) => NextScreen()));
  }
}
