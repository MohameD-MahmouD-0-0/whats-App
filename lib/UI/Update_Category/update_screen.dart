import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled/UI/Update_Category/friends_story.dart';
import 'package:untitled/UI/my_theme.dart';

import '../../provider.dart';
import 'channels_pages.dart';

class UpdatesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ThemeProvider provider = Provider.of<ThemeProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Updates',
          style: Theme.of(context).textTheme.displayLarge?.copyWith(
            color: provider.themeMode == ThemeMode.dark
                ? MyTheme.whiteColor
                : MyTheme.blackColor,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search,
              size: 27,
              color: provider.themeMode == ThemeMode.dark
                  ? MyTheme.whiteColor
                  : MyTheme.blackColor,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.more_vert,
              size: 27,
              color: provider.themeMode == ThemeMode.dark
                  ? MyTheme.whiteColor
                  : MyTheme.blackColor,
            ),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 12),
            child: Text(
              'Status',
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                color: provider.themeMode == ThemeMode.dark
                    ? MyTheme.whiteColor
                    : MyTheme.blackColor,
              ),
            ),
          ),
          FriendsStory(),
          Padding(
            padding: const EdgeInsets.all(12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Channels',
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    color: provider.themeMode == ThemeMode.dark
                        ? MyTheme.whiteColor
                        : MyTheme.blackColor,
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 8),
                  decoration: BoxDecoration(
                    color: provider.themeMode == ThemeMode.dark
                        ? MyTheme.greyColor.withAlpha(25)
                        : MyTheme.greyColor.withAlpha(40),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text(
                    'Explore',
                    style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                      color: provider.themeMode==ThemeMode.dark?MyTheme.whiteColor:MyTheme.blackColor,
                    ),
                  ),
                ),
              ],
            ),
          ),
          ChannelsPage(),
        ],
      ),
    );
  }
}
