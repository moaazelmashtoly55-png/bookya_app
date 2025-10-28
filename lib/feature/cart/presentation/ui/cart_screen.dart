


import 'package:bookya_app/core/theme/app_color.dart';
import 'package:bookya_app/core/widgets/custom_app_bar.dart';
import 'package:bookya_app/feature/home/data/models/product_model.dart';
import 'package:bookya_app/feature/home/presentation/ui/widget/custom_network_image.dart';
import 'package:bookya_app/feature/home/presentation/ui/widget/home_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CartScreen extends StatelessWidget {
  final Products? product;
  const CartScreen({super.key,  this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "My Cart",backBottom: false,),
      
    body: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          SizedBox(height: 50.h,),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
          CustomNetworkImage(imageUrl:   "https://plus.unsplash.com/premium_photo-1661962648855-b97a8e025e0e?ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&q=80&w=1032",
          width: 100,
          height: 115,
          radius: 10.r,), 
                   SizedBox(width: 20.w,),
             Expanded(child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                 Text("moaaaz",style: TextStyle(fontSize: 22),),
                 SizedBox(height: 10.h,),
                Text("255",style: TextStyle(fontSize: 18),),
                  SizedBox(height: 15.h,),

                Row(
                  children: [
                    Container(padding: EdgeInsets.all(6.r),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6.r),
                      color: AppColor.lightgray,
                    ),
                    child: Icon(Icons.add,size: 30,),
                    ),

                    Text("02",style: TextStyle(fontSize:20 ),
                    ),

                    Container(padding: EdgeInsets.all(8.r),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6.r),
                      color: AppColor.lightgray,
                    ),
                    child: Icon(Icons.remove,size: 30,),
                    ),
                  ],
                )
              ],
             )) ,
             Container(
              decoration: BoxDecoration(
                border: Border.all(width: 2),
                shape: BoxShape.circle
              ),
              child: Icon(Icons.close), 
             )
             
            ],
          )
        ],
      ),
    ),

    );
  }
}