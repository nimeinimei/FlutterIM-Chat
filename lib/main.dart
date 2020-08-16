import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '聊天',
      home: Scaffold(
        appBar: AppBar(
          title: Text('聊天'),
          actions: <Widget>[
            IconButton(icon: Icon(Icons.search),onPressed: (){},),
            IconButton(icon: Icon(Icons.add_circle_outline),onPressed: (){},),
          ],
        ),
        body: ,
      ),
    );
  }
}

class ChatList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(

    );
  }
}

