import 'package:flutter/material.dart';
import 'package:telegram/theme/colors.dart';
import 'package:telegram/widgets/contact_item.dart';

class ContactPage extends StatefulWidget {
  const ContactPage({ Key? key }) : super(key: key);

  @override
  _ContactPageState createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            floating: true,
            pinned: true,
            snap: false,
            title: Text('Contacts'),
            actions: [
              IconButton(
                icon: Icon(Icons.add),
                onPressed: () {},
              ),
            ],
            bottom: AppBar(
              elevation: 0,
              title: Container(
                width: double.infinity,
                height: 40,
                child: Center(
                  child: getSearchBox(),
                ),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              SizedBox(height: 10,),
              getFindNearby(),
              getInviteFriends(),
              ContactItem(image: "test1", name: "Jonh Ceb",),
              ContactItem(image: "test2", name: "Jonh Ceb",),
              ContactItem(image: "test3", name: "Jonh Ceb",),
              ContactItem(image: "test4", name: "Jonh Ceb",),
              ContactItem(image: "test5", name: "Jonh Ceb",),
              ContactItem(image: "test6", name: "Jonh Ceb",),
              ContactItem(image: "test7", name: "Jonh Ceb",),
              ContactItem(image: "test8", name: "Jonh Ceb",),
              ContactItem(image: "test9", name: "Jonh Ceb",),
              ContactItem(image: "test10", name: "Jonh Ceb",),
            ]),
          ),
        ],
      ),
    );
  }

  Widget getSearchBox(){
    return
      Container(
        height: 40,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(50)
        ),
        child: TextField(
          style: TextStyle(color: Colors.black),
          decoration: InputDecoration(
            prefixIcon: Icon(Icons.search, color: Colors.grey),
            border: InputBorder.none,
            hintText: "Search...",
            hintStyle: TextStyle(color: Colors.grey, fontSize: 17)),
        ),
      );
  }

  Widget getInviteFriends(){
    return
      Container(
        padding: EdgeInsets.only(left: 10, right: 10),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 50,
                  height: 40,
                  child: Icon(Icons.person_add, color: primary,)
                ),
                SizedBox(width: 10,),
                Text("Invite Friends", style: TextStyle(fontSize: 18, color: primary),),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 60),
              child: Divider(color: Colors.grey,),
            )
          ],
        )
      );
  }

  Widget getFindNearby(){
    return
      Container(
        padding: EdgeInsets.only(left: 10, right: 10),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 50,
                  height: 40,
                  child: Icon(Icons.pin_drop, color: primary,)
                ),
                SizedBox(width: 10,),
                Text("Find People Nearby", style: TextStyle(fontSize: 18, color: primary),),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 60),
              child: Divider(color: Colors.grey,),
            )
          ],
        )
    );
  }
}
