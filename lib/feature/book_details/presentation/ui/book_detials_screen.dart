     




import 'package:bookya_app/core/theme/app_color.dart';
import 'package:bookya_app/core/widgets/custom_app_bar.dart';
import 'package:bookya_app/feature/home/data/models/product_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BookDetialsScreen extends StatelessWidget {
  final Products? product;
  const BookDetialsScreen({super.key, this.product});
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: Padding(
        padding: const EdgeInsets.all(22.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
           Image.network(product?.image??"",
           width: 183.w,
           height:  271.h,
           ),
           
           Text(product?.name??"",style: TextStyle(fontSize: 30),),
           SizedBox(height: 15,),
           Text(product?.category??"",style: TextStyle(fontSize: 20 ,color: AppColor.primary),),
           SizedBox(height: 15,),
          Text(product?.description??"",style: TextStyle(fontSize: 13),),
          SizedBox(height:40,),
          Spacer(),
          Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(product?.price??"",style: TextStyle(fontSize: 20.sp),),
                  Container(
      
                    
                  padding: EdgeInsets.symmetric(horizontal: 20,vertical:20),
                    decoration: BoxDecoration(color: Colors.black,borderRadius: BorderRadius.circular(5.r)),
                    child: Text("Buy",style: TextStyle(fontSize: 15.sp,color: Colors.white),),
      
                  )
                ],
              )
        
          ],
        ),
      ),
    ); 
  }
}