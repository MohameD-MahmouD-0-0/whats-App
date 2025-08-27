import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:untitled/UI/my_theme.dart';

import '../../provider.dart';

class FriendsStory extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 190.h,
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.symmetric(horizontal: 10.w),
        children: [
          PersonalBuild('assets/images/image1.jpeg', 'Add Status',context),
          StoryBuild(
            'assets/images/image1.jpeg',
            'Hisham Ahmed',
            'assets/images/image8.jpeg',
          ),
          StoryBuild(
            'assets/images/image4.jpeg',
            'Malak',
            'assets/images/image5.jpeg',
          ),
          StoryBuild(
            'assets/images/image3.jpeg',
            'Mister black',
            'assets/images/image6.jpeg',
          ),
        ],
      ),
    );
  }
}

Widget StoryBuild(String photo, String name, String story_photo) {
  return Container(
    margin: EdgeInsets.all(10),
    width: 120.w,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(12.r),
      image: DecorationImage(image: AssetImage(story_photo), fit: BoxFit.cover),
    ),
    child: Stack(
      children: [
        Positioned(
          top: 10.h,
          left: 10.w,
          child: Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: MyTheme.greenColor, width: 2,),
            ),
            child: CircleAvatar(
              backgroundImage: AssetImage(photo),
              radius: 22.r,
            ),
          ),
        ),
        Positioned(
          bottom: 10.h,
          left: 10.w,
          child: Text(
            name,
            style: TextStyle(
              color: MyTheme.whiteColor,
              fontSize: 14.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    ),
  );
}

Widget PersonalBuild(String photo, String name,BuildContext context) {
  ThemeProvider provider = Provider.of<ThemeProvider>(context);

  return Container(
    margin: EdgeInsets.all(10),
    width: 120.w,
    decoration: BoxDecoration(
      color: provider.themeMode==ThemeMode.dark?MyTheme.greyColor.withAlpha(25):MyTheme.greyColor.withAlpha(40),
      borderRadius: BorderRadius.circular(12.r),
    ),
    child: Stack(
      // clipBehavior: Clip.none,
      children: [
        Center(
          child: CircleAvatar(backgroundImage: AssetImage(photo), radius: 25.r),
        ),
        Positioned(
          bottom: 40.h,
          right: 45.w,
          child: Container(
            width: 28.w,
            height: 28.w,
            decoration: BoxDecoration(
              color: MyTheme.greenColor,
              shape: BoxShape.circle,
              border: Border.all(color: Colors.white, width: 2),
            ),
            child: Icon(Icons.add, color: Colors.white, size: 20.sp),
          ),
        ),
        Positioned(
          bottom: 10.h,
          left: 19.w,
          child: Text(
            name,
            style: TextStyle(
              color: provider.themeMode==ThemeMode.dark?MyTheme.whiteColor:MyTheme.blackColor,
              fontSize: 15.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    ),
  );
}
