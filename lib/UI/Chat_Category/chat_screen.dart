import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled/UI/Chat_Category/private_chat.dart';
import 'package:untitled/UI/Chat_Category/search-bar.dart';
import '../../provider.dart';
import '../my_theme.dart';

class ChatScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<ThemeProvider>(context);

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'WhatsApp',
            style: Theme.of(context).textTheme.displayLarge?.copyWith(
              color: provider.themeMode == ThemeMode.dark
                  ? MyTheme.whiteColor
                  : Colors.green,
            ),
          ),
          elevation: 0,
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.camera_alt_outlined),
            ),
            IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert)),
            Switch(
              value: provider.themeMode == ThemeMode.dark,
              onChanged: (value) {
                provider.changeThemeMode(
                  value ? ThemeMode.dark : ThemeMode.light,
                );
              },
            ),
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
