import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled/UI/Chat_Category/private_chat.dart';
import 'package:untitled/UI/Chat_Category/search-bar.dart';
import '../../provider.dart';
import '../my_theme.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ThemeProvider provider = Provider.of<ThemeProvider>(context);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'WhatsApp',
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
              color: provider.themeMode == ThemeMode.dark
                  ? MyTheme.whiteColor
                  : MyTheme.greenColor,
            ),
          ),
          elevation: 0,
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.camera_alt_outlined,
                color: provider.themeMode == ThemeMode.dark
                    ? MyTheme.whiteColor
                    : MyTheme.blackColor,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.more_vert,
                color: provider.themeMode == ThemeMode.dark
                    ? MyTheme.whiteColor
                    : MyTheme.blackColor,
              ),
            ),
            Switch(
              value: provider.themeMode == ThemeMode.dark,
              onChanged: (value) {
                provider.changeThemeMode(
                  value ? ThemeMode.dark : ThemeMode.light,
                );
              },
              activeTrackColor: Colors.blue.withOpacity(0.5),
              inactiveTrackColor: Colors.orange.withOpacity(0.5),
              thumbIcon: WidgetStateProperty.resolveWith<Icon?>(
                    (Set<WidgetState> states) {
                  if (states.contains(WidgetState.selected)) {
                    return Icon(Icons.nightlight_round, color: Colors.blue);
                  }
                  return Icon(Icons.wb_sunny, color: Colors.orange);
                },
              ),
            ),
            SizedBox(width: 8),
          ],
        ),
        body: Column(
          children: [
            SearchWatsBar(),
            Expanded(child: PrivatChat()),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: MyTheme.greenColor,
          child: const Icon(Icons.chat, color: Colors.white),
        ),
      ),
    );
  }
}