import 'package:flutter/material.dart';
import 'package:untitled/UI/Update_Category/update_screen.dart';
import 'package:untitled/UI/my_theme.dart';
import 'Call_category/call_screen.dart';
import 'Chat_Category/chat_screen.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = 'home_screen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int index = 0;

  Widget buildIcon(String imagePath, int tabIndex) {
    if (index == tabIndex) {
      return Container(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 9),
        decoration: BoxDecoration(
            color: MyTheme.greenColor,
            borderRadius: BorderRadius.all(Radius.circular(20))
        ),
        child: Image.asset(
          imagePath,
          width: 24, // حجم مناسب للصورة داخل الـ Container
          height: 24,
          color: Colors.white, // لون أبيض للصورة عندما تكون نشطة
        ),
      );
    } else {
      return Image.asset(
        imagePath,
        width: 24,
        height: 24,
        color: Colors.grey, // لون رمادي للصورة عندما تكون غير نشطة
      );
    }
  }

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
          BottomNavigationBarItem(
            icon: buildIcon('assets/images/whatsapp-new-chat.png', 0),
            label: 'Chats',
          ),
          BottomNavigationBarItem(
            icon: buildIcon('assets/images/social-media.png', 1),
            label: 'Updates',
          ),
          BottomNavigationBarItem(
            icon: buildIcon('assets/images/telephone.png', 2),
            label: 'Calls',
          ),
        ],
      ),
      body: taps[index],
    );
  }
}

List<Widget> taps = [ChatScreen(), UpdatesScreen(), CallsScreen()];