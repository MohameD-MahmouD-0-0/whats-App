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
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: index);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  Widget buildIcon(String imagePath, int tabIndex) {
    if (index == tabIndex) {
      return Container(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 9),
        decoration: BoxDecoration(
          color: MyTheme.greenColor,
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
        child: Image.asset(
          imagePath,
          width: 24,
          height: 24,
          color: Colors.white,
        ),
      );
    } else {
      return Image.asset(
        imagePath,
        width: 24,
        height: 24,
        color: Colors.grey,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        onPageChanged: (page) {
          setState(() {
            index = page;
          });
        },
        children: const [
          ChatScreen(),
          UpdatesScreen(),
          CallsScreen(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        onTap: (ind) {
          setState(() {
            index = ind;
            _pageController.animateToPage(
              ind,
              duration: Duration(milliseconds: 400),
              curve: Curves.easeInOut,
            );
          });
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
    );
  }
}
