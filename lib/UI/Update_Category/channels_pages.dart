import 'package:flutter/material.dart';


class ChannelsPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return
      Expanded(
        child: ListView(
          children: [
            contact('assets/images/jobHunter.jpg', 'Job Hunters', 'Hiring in Egypt Position:Flutter Developer', '12:30 PM', 1),
            contact('assets/images/tarboun.jpg', 'Tarboun', 'لايف جديد علي Kiock', '11:45 AM', 5),
            contact('assets/images/route.jpg', 'Route', 'https://www.facebock.com.share/...', '10:20 AM', 6),
            contact('assets/images/Techflow.jpg', 'Tech Flow', ' Our Team at Vois Egypt is growing,an', '9:00 AM', 0),
            contact('assets/images/rockstars.jpg', 'Rockstar Game', ' Get up to  GTA\$2,000,000 in the GTA', 'Yesterday', 5),
            contact('assets/images/alahly.jpeg', 'Al Ahly Sc', ' Goooooool!! the First Goal in the Match . ', 'Monday', 3),
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
    ) {
  return ListTile(
    leading: CircleAvatar(
      radius: 25,
      backgroundImage: AssetImage(photo),
    ),
    title: Text(name, style: const TextStyle(fontWeight: FontWeight.bold)),
    subtitle: Text(message, maxLines: 1, overflow: TextOverflow.ellipsis),
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