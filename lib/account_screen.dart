import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:html/dom.dart' as dom;

class AccountScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Html Screen'),
      ),
      body: Center(
          child: SingleChildScrollView(
        child: Html(
          data: '''
        <h2>Title</h2>
        <p class="headline">Title</p>
        <img src="https://e-gifts-dev.s3.ap-northeast-1.amazonaws.com/eg_gift_card_designs/images/3/original/Coffee_05_800600.jpg"></img>
        ''',
          customTextStyle: (dom.Node node, TextStyle baseStyle) {
            if (node is dom.Element) {
              switch (node.className) {
                case "headline":
                  return baseStyle.merge(TextStyle(
                      fontSize: 80, decoration: TextDecoration.underline));
              }
            }
            return baseStyle;
          },
        ),
      )),
    );
  }
}
