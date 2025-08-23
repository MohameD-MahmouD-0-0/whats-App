import 'package:flutter/material.dart';
import 'package:untitled/UI/Update_Category/friends_story.dart';
import 'package:untitled/UI/my_theme.dart';

import 'channels_pages.dart';

class UpdatesScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Updates', style: TextStyle(
          fontWeight: FontWeight.w400,fontSize: 23
        )),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.search,size: 27,)),
          IconButton(onPressed: (){}, icon: Icon(Icons.more_vert,size: 27,)),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 12),
            child: Text('Status',style: Theme.of(context).textTheme.titleMedium,),
          ),
          FriendsStory(),
          Padding(
            padding: const EdgeInsets.all(12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Channels',style: Theme.of(context).textTheme.titleMedium,),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 12,vertical: 8),
                  decoration: BoxDecoration(
                    color: MyTheme.greyColor.withAlpha(40),
                    borderRadius: BorderRadius.circular(20),
                  ),child: Text('Explore',style: Theme.of(context).textTheme.headlineMedium,),
                )
              ],
            ),
          ),
          ChannelsPage()
        ],
      ),
    );
  }

}