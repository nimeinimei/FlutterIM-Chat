import 'package:flutter/material.dart';
import 'package:flutter_chat_im/Provider/chatListProvider.dart';
import 'package:provider/provider.dart';

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
        body: MultiProvider(
          providers: [
            ChangeNotifierProvider(
              builder: (_) => ChatListProvider(),
            )
          ],
          child: ChatList(),
        ),
      ),
    );
  }
}

class ChatList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ChatListProvider provider = Provider.of<ChatListProvider>(context);
    if (provider==null) {
      return Center(child: CircularProgressIndicator());
    }
    return ListView.builder(
        shrinkWrap: true,
        itemCount: provider.chats.length,
        itemBuilder: (BuildContext context, int index) {
          return Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              ListTile(
                leading: Image.network(provider.chats[index].userIds[0].avatarUrl),
                title: Text(provider.chats[index].userIds[0].userName,),
                subtitle: Text(provider.chats[index].lastContent),
                trailing: Text(provider.chats[index].lastUpdateTime),
              ),
              Divider(),
            ],
          );
        },
    );
  }
}

