import 'package:flutter/material.dart';


class PrivatChat extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return
       ListView(
        children: [
          contact('assets/images/image1.jpeg', 'Hisham Ahmed', ' عامل ايه يا عم ليك واحشه', '12:30 PM', 1),
          contact('assets/images/image2.jpeg', 'Omar Mahmoud', '?هتيجيي الحجز النهارده من 9ل 10 ', '11:45 AM', 5),
          contact('assets/images/image3.jpeg', 'Mister black', 'هات تليفونك', '10:20 AM', 6),
          contact('assets/images/image4.jpeg', 'Malak', 'تصبحي علي خير ', '9:00 AM', 0),
          contact('assets/images/image5.jpeg', 'Abood', ' انت عارف ان شركه  ZYTRONIC اجمد ستارتب ', 'Yesterday', 5),
          contact('assets/images/image6.jpeg', 'Nemo', 'فينك كدا', 'Monday', 3),
          contact('assets/images/image7.jpeg', 'Baba', 'اعملي شااااي', 'Sunday', 0),
          contact('assets/images/image8.jpeg', 'Ahmed Sayed', 'خلصانه', 'Sunday', 1),
          contact('assets/images/image9.jpeg', 'Mama', 'هات شاي معاك', 'Sunday', 2),
        ],);
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