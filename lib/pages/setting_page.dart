
import 'package:flutter/material.dart';
import 'package:telegram/theme/colors.dart';
import 'package:telegram/widgets/avatar_image.dart';
import 'package:telegram/widgets/setting_item.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({ Key? key }) : super(key: key);

  @override
  _SettingPageState createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: getBody()
    );
  }

  Widget getBody() {
    return ListView(
      padding: EdgeInsets.only(left: 20, right: 20),
      shrinkWrap: true,
      children: [
        SizedBox(height: 40,),
        Container(
          padding: const EdgeInsets.only(top: 20),
          child: Column(
            children: <Widget>[
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(width: 40,),
                  AvatarImage(
                    "profile3", 
                    width: 80,
                    height: 80,
                  ),
                  Container(
                    width: 40,
                    child: Text("Edit",
                        style: TextStyle(
                          color: primary,
                          fontSize: 16,
                          fontWeight: FontWeight.w500
                        ),
                      ),
                  )
                  
                ],
              ),
              SizedBox(height: 15,),
              Text("Sangvaleap",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w500
                ),
              ),
              SizedBox(height: 8,),
              Text("@sangvaleap",
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.grey,
                  fontWeight: FontWeight.w500
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 20,),
        Container(
          padding: const EdgeInsets.only(left: 15, right: 15),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: Theme.of(context).cardColor,
            boxShadow: [
              BoxShadow(
                color: Theme.of(context).shadowColor.withOpacity(0.1),
                spreadRadius: 1,
                blurRadius: 1,
                offset: Offset(0, 1), // changes position of shadow
              ),
            ],
          ),
          child: Column(
            children: [
              SettingItem(title: "Saved Messages", leadingIcon: Icons.bookmark_outline, bgIconColor: Colors.blue,
                onTap: (){
                  // Get.toNamed('/space');
                },
              ),
              Padding(
                padding: const EdgeInsets.only(left: 45),
                child: Divider(height: 0, color: Colors.grey.withOpacity(0.8),),
              ),
              SettingItem(title: "Recent Calls", leadingIcon: Icons.call_outlined, bgIconColor: Colors.green,
                onTap: (){
                },
              ),
              Padding(
                padding: const EdgeInsets.only(left: 45),
                child: Divider(height: 0, color: Colors.grey.withOpacity(0.8),),
              ),
              SettingItem(title: "Devices", leadingIcon: Icons.devices, bgIconColor: Colors.orange,
                onTap: (){
                },
              ),
              Padding(
                padding: const EdgeInsets.only(left: 45),
                child: Divider(height: 0, color: Colors.grey.withOpacity(0.8),),
              ),
              SettingItem(title: "Chat Folders", leadingIcon: Icons.folder_open_outlined, bgIconColor: Colors.lightBlue.shade300,
                onTap: (){
                },
              ),
            ]
          ),
        ),
        SizedBox(height: 20,),
        Container(
          padding: const EdgeInsets.only(left: 15, right: 15),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: Theme.of(context).cardColor,
            boxShadow: [
              BoxShadow(
                color: Theme.of(context).shadowColor.withOpacity(0.1),
                spreadRadius: 1,
                blurRadius: 1,
                offset: Offset(0, 1), // changes position of shadow
              ),
            ],
          ),
          child: Column(
            children: [
              SettingItem(title: "Notifications and Sounds", leadingIcon: Icons.notifications_on_outlined, bgIconColor: Colors.red,
                onTap: (){
                  
                }
              ),
              Padding(
                padding: const EdgeInsets.only(left: 45),
                child: Divider(height: 0, color: Colors.grey.withOpacity(0.8),),
              ),
              SettingItem(title: "Privacy and Security", leadingIcon: Icons.lock_outline, bgIconColor: Colors.grey,
                onTap: (){
                }
              ),
              Padding(
                padding: const EdgeInsets.only(left: 45),
                child: Divider(height: 0, color: Colors.grey.withOpacity(0.8),),
              ),
              SettingItem(title: "Data and Storage", leadingIcon: Icons.storage_outlined, bgIconColor: Colors.lightGreen,
                onTap: (){
                }
              ),
              Padding(
                padding: const EdgeInsets.only(left: 45),
                child: Divider(height: 0, color: Colors.grey.withOpacity(0.8),),
              ),
              SettingItem(title: "Appearance", leadingIcon: Icons.dark_mode_outlined, bgIconColor: Colors.lightBlue,
                onTap: (){
                }
              ),
            ]
          ),
        ),
        SizedBox(height: 20,),
        Container(
          padding: const EdgeInsets.only(left: 15, right: 15),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: Theme.of(context).cardColor,
            boxShadow: [
              BoxShadow(
                color: Theme.of(context).shadowColor.withOpacity(0.1),
                spreadRadius: 1,
                blurRadius: 1,
                offset: Offset(0, 1), // changes position of shadow
              ),
            ],
          ),
          child: Column(
            children: [
              SettingItem(title: "Log Out", leadingIcon: Icons.logout_outlined, bgIconColor: Colors.grey.shade400,
                onTap: (){
                },
              ),
            ]
          ),
        ),
        SizedBox(height: 10,),
      ],
    );
  }
}
