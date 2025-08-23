import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../my_theme.dart';

class PersonalStory extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      width: 120.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: Stack(
        children: [
          Positioned(
            top: 10.h,
            left: 10.w,
            child: CircleAvatar(backgroundImage: AssetImage('assets/images/image7.jpeg'), radius: 22.r),
          ),
          Positioned(
            bottom: 10.h,
            left: 10.w,
            child: Text(
              'Add Status',
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

}