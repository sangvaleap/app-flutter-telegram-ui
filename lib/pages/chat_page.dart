import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:telegram/data/json.dart';
import 'package:telegram/widgets/chat_item.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({ Key? key }) : super(key: key);

  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 75,
        leading: Center(
          child: Text('Edit', style: TextStyle(fontSize: 18),)
        ),
        title: Text("Chats"),
        actions: [
          IconButton(onPressed: (){
            
          }, 
          icon: Icon(Icons.edit)
          )
        ],
      ),
      body: getBody(),
    );
  }

  getBody(){
    return
      SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 15),
          child: Column(
              children: List.generate(chatsData.length, (index) {
                return  AnimationConfiguration.staggeredList(
                    position: index,
                    duration: const Duration(milliseconds: 300),
                    child: SlideAnimation(
                      verticalOffset: 50.0,
                      child: FadeInAnimation(
                        child: ChatItem(chatsData[index],),
                      ),
                    ),
                  );
            })
          ),
        ),
      );
  }
}

