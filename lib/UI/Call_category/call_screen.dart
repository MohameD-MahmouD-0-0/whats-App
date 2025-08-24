import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled/UI/my_theme.dart';

class CallsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Calls',
          style: TextStyle(fontWeight: FontWeight.w400, fontSize: 23.sp),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.search, size: 27.sp)),
          IconButton(onPressed: () {}, icon: Icon(Icons.more_vert, size: 27.sp)),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 12.w, top: 8.h, bottom: 8.h),
            child: Text(
              'Favourites',
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.w),
            child: Row(
              children: [
                CircleAvatar(
                  backgroundColor: MyTheme.greenColor,
                  radius: 22.r,
                  child: Icon(Icons.favorite, color: MyTheme.whiteColor, size: 20.sp),
                ),
                SizedBox(width: 15.w),
                Text(
                  'Add favourites',
                  style: Theme.of(context).textTheme.headlineMedium?.copyWith(fontSize: 16.sp),
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 12.w, top: 12.h, bottom: 8.h),
            child: Text(
              'Recent',
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                friendCall('assets/images/image4.jpeg', 'Malak', Icons.call_made,  'Today, 12:30 PM', Icons.call, false),
                friendCall('assets/images/image7.jpeg', 'Baba', Icons.call_made, 'Yesterday, 11:45 AM', Icons.call, false),
                friendCall('assets/images/image5.jpeg', 'Abood', Icons.call_received_outlined, 'Yesterday, 10:20 AM', Icons.call, true),
                friendCall('assets/images/image3.jpeg', 'Mister black', Icons.call_made, 'Yesterday, 9:00 AM', Icons.call, false),
                friendCall('assets/images/image1.jpeg', 'Hisham Ahmed', Icons.call_made, 'Yesterday, 3 PM', Icons.call, false),
                friendCall('assets/images/image2.jpeg', 'Omar Mahmoud', Icons.call_received_outlined, 'Monday', Icons.phone, true),
                friendCall('assets/images/image8.jpeg', 'Ahmed Sayed', Icons.call_received_outlined, 'Sunday', Icons.phone, true),
                friendCall('assets/images/image9.jpeg', 'Mama', Icons.call_received_outlined, 'Sunday', Icons.phone, true),
              ],
            ),
          )
        ],
      ),
    );
  }
}

Widget friendCall(String photo, String name, IconData arrow, String time, IconData call, bool isMissed) {
  return ListTile(
    contentPadding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 4.h),
    leading: CircleAvatar(
      radius: 22.r,
      backgroundImage: AssetImage(photo),
    ),
    title: Text(
      name,
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 16.sp,
        color: isMissed ? Colors.red : Colors.black,
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
        Text(time, style: TextStyle(fontSize: 13.sp), maxLines: 1, overflow: TextOverflow.ellipsis),
      ],
    ),
    trailing: Icon(call, color: MyTheme.blackColor, size: 22.sp),
  );
}
