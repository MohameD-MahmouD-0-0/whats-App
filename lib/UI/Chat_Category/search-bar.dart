import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import '../../provider.dart';

class SearchWatsBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ThemeProvider provider = Provider.of<ThemeProvider>(context);

    return Container(
      margin: EdgeInsets.symmetric(horizontal: 12.w, vertical: 8.h),
      padding: EdgeInsets.symmetric(horizontal: 12.w),
      decoration: BoxDecoration(
        color:  provider.themeMode==ThemeMode.dark?Colors.grey[900]: Colors.grey[200],
        borderRadius: BorderRadius.circular(25.r),
      ),
      child: TextField(
        style: Theme.of(context).textTheme.bodyMedium?.copyWith(fontSize: 16.sp),
        decoration: InputDecoration(
          icon: Icon(Icons.search, color: Colors.grey, size: 22.sp),
          hintText: 'Ask Meta AI or Search',
          hintStyle: Theme.of(context).textTheme.bodyMedium?.copyWith(
            color: Colors.grey,
            fontSize: 16.sp,
          ),
          border: InputBorder.none
        ),
      ),
    );
  }
}
