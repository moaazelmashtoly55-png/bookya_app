import 'package:bookya_app/core/theme/app_color.dart';
import 'package:bookya_app/core/widgets/custom_app_bar.dart';
import 'package:bookya_app/feature/cart/presentation/cubit/cubit/cart_cubit.dart';
import 'package:bookya_app/feature/cart/presentation/ui/widget/cart_book_item.dart';
import 'package:bookya_app/feature/home/data/models/product_model.dart';
import 'package:bookya_app/feature/home/presentation/ui/widget/custom_network_image.dart';
import 'package:bookya_app/feature/home/presentation/ui/widget/home_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CartScreen extends StatelessWidget {
  final Products? product;
  const CartScreen({super.key, this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "My Cart", backBottom: false),

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            SizedBox(height: 50.h),
            BlocBuilder<CartCubit, CartState>(
              builder: (context, state) {
                if(state is GetCartloading){
                  return Center(child: CircularProgressIndicator());
                }else if (state is GetCartSuccess){
                  return Expanded(
                  child: ListView.separated(
                    itemBuilder: (context, index) => CartBookItem(
                      cartItems: state.cartProducts[index],
                    ),
                    separatorBuilder: (context, index) => Divider(height: 59.h),
                    itemCount: state.cartProducts.length,
                  ),
                );
                }else{return Text("error");}
              },
            ),
          ],
        ),
      ),
    );
  }
}
