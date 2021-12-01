
import 'package:flutter/material.dart';

import 'avatar_image.dart';

class ContactItem extends StatelessWidget {
  const ContactItem({Key? key, required this.image, required this.name,}) : super(key: key);
  final String image;
  final String name;

  @override
  Widget build(BuildContext context) {
    return 
      Container(
        padding: EdgeInsets.only(left: 10, right: 10),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AvatarImage(image, width: 50, height: 50,),
            SizedBox(width: 10,),
            Expanded(
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(name, style: TextStyle(fontSize: 18,),),
                    SizedBox(height: 5,),
                    Text("Last seen recently", style: TextStyle(fontSize: 14, color: Colors.grey,),),
                    SizedBox(height: 5,),
                    Divider(color: Colors.grey,)
                  ],
                ),
              )
            )
          ],
        )
    );
  }
}