import 'package:bookya_app/feature/home/presentation/ui/widget/appbar_home.dart';
import 'package:bookya_app/feature/home/presentation/ui/widget/book_items.dart';
import 'package:bookya_app/feature/home/presentation/ui/widget/home_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: 
         SafeArea(
           child: Padding(
             padding:  EdgeInsets.symmetric(horizontal: 15.w),
             child: Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 12.h,),
               AppbarHome(),
               SizedBox(height: 25.h,),
               HomeSlider(),
              SizedBox(height: 31.h,),
              Text("Best Seller",style: TextStyle(fontSize: 24),),
              SizedBox(height: 15.h,),
              BookItems(),
              





              ],
                     ),
           ),
         ),
      
    );
  }
}