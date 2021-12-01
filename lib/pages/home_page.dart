
import 'package:flutter/material.dart';
import 'package:telegram/pages/chat_page.dart';
import 'package:telegram/pages/contact_page.dart';
import 'package:telegram/pages/setting_page.dart';
import 'package:telegram/theme/colors.dart';

class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 1;
  var _pages = [ContactPage(), ChatPage(), SettingPage()];
  var _bottomItems = const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.person_pin),
            label: 'Contacts',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.forum_outlined),
            label: 'Chats',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _pages.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: _bottomItems,
        currentIndex: _selectedIndex,
        onTap: onBarTap,
        unselectedItemColor: mainColor,
        selectedItemColor: primary,
      ),
    );
  }

  onBarTap(index){
    setState(() {
      _selectedIndex = index;
    });
  }
}