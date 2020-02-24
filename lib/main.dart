import 'package:flutter/material.dart';
import 'package:flutter_bottom_navbar/next_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MainPage(),
      routes: {
        NextScreen.routeName: (context) => NextScreen(),
      },
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({Key key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _index = 0;
  void _onBottomBarTap(int index) {
    setState(() {
      _index = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: [
          Text('Search Screen'),
          Text('Account Screen'),
        ][_index],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            [
              FlatButton(
                onPressed: () =>
                    Navigator.of(context).pushNamed(NextScreen.routeName),
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
              Text(
                'Account Screen',
                style: TextStyle(fontSize: 24, color: Colors.amber),
              )
            ][_index]
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              title: Text('Search'), icon: Icon(Icons.search)),
          BottomNavigationBarItem(
              title: Text('Account'), icon: Icon(Icons.account_circle)),
        ],
        selectedItemColor: Colors.amber[800],
        currentIndex: _index,
        onTap: _onBottomBarTap,
      ),
    );
  }
}
