


import 'package:bookya_app/core/theme/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BookItems extends StatelessWidget {
  const  BookItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 163.w,
      height: 281.h ,
      decoration: BoxDecoration(
        color: AppColor.backBook,
        borderRadius: BorderRadius.circular(10.r),
        
      ),
    );
  }
}