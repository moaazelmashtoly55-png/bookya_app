


import 'package:bookya_app/core/theme/app_color.dart';
import 'package:bookya_app/feature/home/data/models/product_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BookItems extends StatelessWidget {
  final Products? product;
  void Function()? onTap;
  void Function()? onTapCart;
  BookItems({super.key, required this.product, this.onTap,this.onTapCart});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(12),
        width: 163.w,
        height: 281.h ,
        decoration: BoxDecoration(
          color: AppColor.backBook,
          borderRadius: BorderRadius.circular(10.r),
           
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(borderRadius: BorderRadius.circular(17.r),
              child: Image.network(  product?.image??"",
              
               width: 140.w,height: 176.h,),
            ),
             SizedBox(height: 6.h,),
              Text(product?.name??"",style: TextStyle(fontSize: 18.sp),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,),
              SizedBox(height: 23.h,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(product?.price??"",style: TextStyle(fontSize: 16.sp),),
                  InkWell(onTap: onTapCart,
                    child: Container(
                          
                      
                    padding: EdgeInsets.symmetric(horizontal: 12,vertical: 4),
                      decoration: BoxDecoration(color: Colors.black,borderRadius: BorderRadius.circular(5.r)),
                      child: Text("Buy",style: TextStyle(fontSize: 14.sp,color: Colors.white),),
                          
                    ),
                  )
                ],
              )
          ],
        ),
      ),
    );
  }
}