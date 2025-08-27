import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:untitled/UI/my_theme.dart';

import '../../provider.dart';

class CallsScreen extends StatelessWidget {
  const CallsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ThemeProvider provider = Provider.of<ThemeProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Calls',
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
              size: 27.sp,
              color: provider.themeMode == ThemeMode.dark
                  ? MyTheme.whiteColor
                  : MyTheme.blackColor,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.more_vert,
              size: 27.sp,
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
            padding: EdgeInsets.only(left: 12.w, top: 8.h, bottom: 8.h),
            child: Text(
              'Favourites',
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                color: provider.themeMode == ThemeMode.dark
                    ? MyTheme.whiteColor
                    : MyTheme.blackColor,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.w),
            child: Row(
              children: [
                CircleAvatar(
                  backgroundColor: MyTheme.greenColor,
                  radius: 22.r,
                  child: Icon(
                    Icons.favorite,
                    color: MyTheme.whiteColor,
                    size: 20.sp,
                  ),
                ),
                SizedBox(width: 15.w),
                Text(
                  'Add favourites',
                  style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                    fontSize: 17.sp,
                    color: provider.themeMode == ThemeMode.dark
                        ? MyTheme.whiteColor
                        : MyTheme.blackColor,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 12.w, top: 12.h, bottom: 8.h),
            child: Text(
              'Recent',
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                color: provider.themeMode == ThemeMode.dark
                    ? MyTheme.whiteColor
                    : MyTheme.blackColor,
              ),
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                friendCall(
                  'assets/images/image4.jpeg',
                  'Malak',
                  Icons.call_made,
                  'Today, 12:30 PM',
                  Icons.call,
                  false,
                  context,
                ),
                friendCall(
                  'assets/images/image7.jpeg',
                  'Baba',
                  Icons.call_made,
                  'Yesterday, 11:45 AM',
                  Icons.call,
                  false,
                  context,
                ),
                friendCall(
                  'assets/images/image5.jpeg',
                  'Abood',
                  Icons.call_received_outlined,
                  'Yesterday, 10:20 AM',
                  Icons.call,
                  true,
                  context,
                ),
                friendCall(
                  'assets/images/image3.jpeg',
                  'Mister black',
                  Icons.call_made,
                  'Yesterday, 9:00 AM',
                  Icons.call,
                  false,
                  context,
                ),
                friendCall(
                  'assets/images/image1.jpeg',
                  'Hisham Ahmed',
                  Icons.call_made,
                  'Yesterday, 3 PM',
                  Icons.call,
                  false,
                  context,
                ),
                friendCall(
                  'assets/images/image2.jpeg',
                  'Omar Mahmoud',
                  Icons.call_received_outlined,
                  'Monday',
                  Icons.phone,
                  true,
                  context,
                ),
                friendCall(
                  'assets/images/image8.jpeg',
                  'Ahmed Sayed',
                  Icons.call_received_outlined,
                  'Sunday',
                  Icons.phone,
                  true,
                  context,
                ),
                friendCall(
                  'assets/images/image9.jpeg',
                  'Mama',
                  Icons.call_received_outlined,
                  'Sunday',
                  Icons.phone,
                  true,
                  context,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Widget friendCall(
  String photo,
  String name,
  IconData arrow,
  String time,
  IconData call,
  bool isMissed,
  BuildContext context,
) {
  ThemeProvider provider = Provider.of<ThemeProvider>(context);
  return ListTile(
    contentPadding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 4.h),
    leading: CircleAvatar(radius: 22.r, backgroundImage: AssetImage(photo)),
    title: Text(
      name,
      style: Theme.of(context).textTheme.titleSmall?.copyWith(
        color: isMissed
            ? Colors.red
            : provider.themeMode == ThemeMode.dark
            ? MyTheme.whiteColor
            : MyTheme.blackColor,
      ),
    ),
    subtitle: Row(
      children: [
        Icon(
          arrow,
          color: isMissed ? Colors.red : MyTheme.greenColor,
          size: 18.sp,
        ),
        SizedBox(width: 4.w),
        Text(
          time,
          style: Theme.of(context).textTheme.headlineMedium?.copyWith(
            color: provider.themeMode == ThemeMode.dark
                ? MyTheme.greyColor
                : MyTheme.blackColor,
          ),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
      ],
    ),
    trailing: Icon(
      call,
      color: provider.themeMode == ThemeMode.dark
          ? MyTheme.whiteColor
          : MyTheme.blackColor,
      size: 22.sp,
    ),
  );
}
