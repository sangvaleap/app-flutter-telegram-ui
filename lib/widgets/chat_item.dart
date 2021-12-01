import 'package:flutter/material.dart';

import 'avatar_image.dart';

class ChatItem extends StatelessWidget {
  const ChatItem(this.chatData, { Key? key, this.onTap}) : super(key: key);
  final chatData;
  final GestureTapCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.only(left: 10, right: 10, bottom: 5),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AvatarImage(
              chatData['name'], 
              width: 50,
              height: 50,
              trBackground: true,
              bgColor: Theme.of(context).cardColor,
            ),
            SizedBox(width: 10),
            Expanded(
              child: 
              Container(
                child:
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Row(
                        children: <Widget>[
                          Expanded(
                            child: Container(
                              child: Text(chatData['name'], maxLines: 1, overflow: TextOverflow.ellipsis, style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700))
                            )
                          ),
                          SizedBox(width: 5),
                          Container(
                            child: Text(chatData['date'], maxLines: 1, overflow: TextOverflow.ellipsis, style: TextStyle(fontSize: 14))
                          )
                        ],
                      ),
                      SizedBox(height: 3,),
                      Row(
                        children: <Widget>[
                          Expanded(
                            child: Container(
                              child: Text(chatData['last_user'], maxLines: 1, overflow: TextOverflow.ellipsis, style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600))
                            )
                          ),
                        ],
                      ),
                      SizedBox(height: 3,),
                      Row(
                        children: <Widget>[
                          Expanded(
                            child: Container(
                              child: Text(chatData['last_text'], maxLines: 1, overflow: TextOverflow.ellipsis, style: TextStyle(fontSize: 14))
                            )
                          ),
                        ],
                      ),
                      Divider(color: Colors.grey,)
                    ],
                  )
              )
            ),
          ],
        ),
      ),
    );
  }
}