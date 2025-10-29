


import 'package:bookya_app/core/theme/app_color.dart';
import 'package:bookya_app/feature/cart/data/models/cart_model.dart';
import 'package:bookya_app/feature/home/presentation/ui/widget/custom_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CartBookItem extends StatelessWidget {
  final CartItems? cartItems;
  const CartBookItem({super.key, this.cartItems});

  @override
  Widget build(BuildContext context) {
    return Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
          CustomNetworkImage(imageUrl:  cartItems?.itemProductImage??"",
          width: 100,
          height: 115,
          radius: 8.r,), 
                   SizedBox(width: 20.w,),
             Expanded(child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                 Text(cartItems?.itemProductName??"",style: TextStyle(fontSize: 22),),
                 SizedBox(height: 10.h,),
                Text(cartItems?.itemProductPrice??"",style: TextStyle(fontSize: 18),),
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

                    Text(cartItems?.itemQuantity.toString()??"",style: TextStyle(fontSize:20 ),
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
          );
  }
}