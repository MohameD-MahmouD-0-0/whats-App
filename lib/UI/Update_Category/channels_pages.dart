import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../provider.dart';
import '../my_theme.dart';


class ChannelsPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return
      Expanded(
        child: ListView(
          children: [
            contact('assets/images/jobHunter.jpg', 'Job Hunters', 'Hiring in Egypt Position:Flutter Developer', '12:30 PM', 1,context),
            contact('assets/images/tarboun.jpg', 'Tarboun', 'لايف جديد علي Kiock', '11:45 AM', 5,context),
            contact('assets/images/route.jpg', 'Route', 'https://www.facebock.com.share/...', '10:20 AM', 6,context),
            contact('assets/images/Techflow.jpg', 'Tech Flow', ' Our Team at Vois Egypt is growing,an', '9:00 AM', 0,context),
            contact('assets/images/rockstars.jpg', 'Rockstar Game', ' Get up to  GTA\$2,000,000 in the GTA', 'Yesterday', 5,context),
            contact('assets/images/alahly.jpeg', 'Al Ahly Sc', ' Goooooool!! the First Goal in the Match . ', 'Monday', 3,context),
          ],),
      );
  }
}

Widget contact(
    String photo,
    String name,
    String message,
    String time,
    int unread,
    BuildContext context
    ) {
  ThemeProvider provider = Provider.of<ThemeProvider>(context);
  return ListTile(
    leading: CircleAvatar(
      radius: 25,
      backgroundImage: AssetImage(photo),
    ),
    title: Text(name, style: Theme.of(context).textTheme.titleSmall?.copyWith(
  color: provider.themeMode==ThemeMode.dark?MyTheme.whiteColor:MyTheme.blackColor,
  )),
    subtitle: Text(message, maxLines: 1, overflow: TextOverflow.ellipsis,
    style: Theme.of(context).textTheme.headlineMedium?.copyWith(color:
    provider.themeMode==ThemeMode.dark?MyTheme.greyColor:MyTheme.blackColor,
    ),),
    trailing: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(time, style: const TextStyle(fontSize: 12, color: Colors.grey)),
        const SizedBox(height: 5),
        if (unread > 0)
          CircleAvatar(
            radius: 10,
            backgroundColor: Colors.green,
            child: Text(
              '$unread',
              style: const TextStyle(color: Colors.white, fontSize: 12),
            ),
          ),
      ],
    ),
  );
}