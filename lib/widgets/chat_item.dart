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
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: Column(
          children: [
            SizedBox(height: 2),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AvatarImage(
                  chatData['name'], 
                  width: 50,
                  height: 50,
                ),
                SizedBox(width: 10),
                Expanded(
                  child: 
                  Container(
                    height: 60,
                    child:
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Row(
                            children: <Widget>[
                              Expanded(
                                child: Container(
                                  child: Text(chatData['name'], maxLines: 1, overflow: TextOverflow.ellipsis, style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700))
                                )
                              ),
                              SizedBox(width: 5),
                              Container(
                                child: Text(chatData['date'], maxLines: 1, overflow: TextOverflow.ellipsis, style: TextStyle(fontSize: 14))
                              )
                            ],
                          ),
                          Visibility(
                            visible: chatData['chatType'] == 1 ? true : false,
                            child: SizedBox(height:  3,)
                          ),
                          Visibility(
                            visible: chatData['chatType'] == 1 ? true : false,
                            child: Row(
                              children: <Widget>[
                                Container(
                                  child: Text(chatData['last_user'], maxLines: 1, overflow: TextOverflow.ellipsis, style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600))
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 3,),
                          Row(
                            children: <Widget>[
                              Container(
                                child: Text(chatData['last_text'], maxLines: 1, overflow: TextOverflow.ellipsis, style: TextStyle(fontSize: 13))
                              ),
                            ],
                          ),
                        ],
                      )
                  )
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 60),
              child: Divider(color: Colors.grey.withOpacity(0.8),),
            )
          ],
        ),
      ),
    );
  }
}