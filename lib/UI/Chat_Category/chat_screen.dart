import 'package:flutter/material.dart';
import 'package:untitled/UI/Chat_Category/private_chat.dart';
import 'package:untitled/UI/Chat_Category/search-bar.dart';
import '../my_theme.dart';

class ChatScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'WhatsApp',
            style: Theme.of(
              context,
            ).textTheme.displayLarge?.copyWith(color: MyTheme.greenColor),
          ),
          backgroundColor: Colors.white,
          elevation: 0,
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.camera_alt_outlined, color: Colors.black),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.more_vert, color: Colors.black),
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
