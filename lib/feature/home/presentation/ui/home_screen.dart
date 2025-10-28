import 'package:bookya_app/core/helper/local_servises.dart';
import 'package:bookya_app/feature/book_details/presentation/ui/book_detials_screen.dart';
import 'package:bookya_app/feature/home/presentation/cubit/cubit/home_cubit.dart';
import 'package:bookya_app/feature/home/presentation/ui/widget/appbar_home.dart';
import 'package:bookya_app/feature/home/presentation/ui/widget/book_items.dart';
import 'package:bookya_app/feature/home/presentation/ui/widget/home_slider.dart';
import 'package:bookya_app/feature/welcome/presentation/ui/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 12.h),
              AppbarHome(),
              SizedBox(height: 25.h),
              HomeSlider(),
              SizedBox(height: 31.h),
              Text("Best Seller", style: TextStyle(fontSize: 24)),
              SizedBox(height: 15.h),
              Expanded(
                child: BlocConsumer<HomeCubit, HomeState>(
                  listener: (context, state) {

                    if(state is AddToCartLoading){
                      showDialog(context: context,
                       builder: (context)=>Center(
                        child: CircularProgressIndicator(),
                      )
                      );
                    }else if(state is AddToCartSuccess){
                      Navigator.pop(context);
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      backgroundColor: Colors.green
                        ,content: Text("Product Add To Cart")));
                    }
                  },
                  buildWhen: (previous, current) => 
                  current is GetBestSellarError||
                  current is GetBestSellarSuccess||
                  current is GetBestSellarLoading,
                  builder: (context, state) {
                  if (state is GetBestSellarLoading){
                    return Center(child: CircularProgressIndicator(),);
                  }else if(state is GetBestSellarSuccess){
                      return GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio: .6,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 14,
                      ),
                      itemBuilder: (context, index) => BookItems(
                        product: state.products[index],
                        onTap: () {
                          
                           Navigator.push(
                           context,
                            MaterialPageRoute(builder: (context) =>  BookDetialsScreen(product: state.products[index],)),
                            );
                        },

                          onTapCart: () {
                            context.read<HomeCubit>().addToCart(state.products[index].id??0);
                          },

                      ),
                      itemCount: state.products.length,
                    );
                  }else{return Text("error");}
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
