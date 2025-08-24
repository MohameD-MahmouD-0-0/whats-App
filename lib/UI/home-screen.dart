import 'package:flutter/material.dart';
import 'package:untitled/UI/Update_Category/update_screen.dart';
import 'Call_category/call_screen.dart';
import 'Chat_Category/chat_screen.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = 'home_screen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        onTap: (ind) {
          index = ind;
          setState(() {});
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.chat), label: 'Chats'),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_outlined),
            label: 'Updates',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.call), label: 'Calls'),
        ],
      ),
      body: taps[index],
    );
  }
}

List<Widget> taps = [ChatScreen(), UpdatesScreen(), CallsScreen()];
