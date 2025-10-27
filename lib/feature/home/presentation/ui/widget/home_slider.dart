import 'package:bookya_app/core/theme/app_color.dart';
import 'package:bookya_app/feature/home/presentation/cubit/cubit/home_cubit.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

List<String> images = [
  "https://plus.unsplash.com/premium_photo-1661962648855-b97a8e025e0e?ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&q=80&w=1032",
  "https://images.unsplash.com/photo-1579548122080-c35fd6820ecb?ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&q=80&w=870",
  "https://tse2.mm.bing.net/th/id/OIP.1jw6oHOvWzHWwSMgc7TJEQHaFP?rs=1&pid=ImgDetMain&o=7&rm=3",
];

class HomeSlider extends StatefulWidget {
  const HomeSlider({super.key});

  @override
  State<HomeSlider> createState() => _HomeSliderState();
}

class _HomeSliderState extends State<HomeSlider> {
  int activeIndex = 0;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      buildWhen: (previous, current) =>
      current is GetHomeSliderError||
      current is GetHomeSliderLoading||
      current is GetHomeSliderSuccess,
      builder: (context, state) {
        if(state is GetHomeSliderLoading){
          return Center(child: CircularProgressIndicator(),);
        }else if(state is GetHomeSliderSuccess){
          return  Column(
          children: [
            CarouselSlider(
              options: CarouselOptions(
                height: 170.0.h,
                autoPlay: true,
                viewportFraction: 1,
                autoPlayInterval: Duration(seconds: 3),
                onPageChanged: (index, reason) {
                  setState(() {
                    activeIndex = index;
                  });
                },
              ),

              items: state.sliders.map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.symmetric(horizontal: 5.0),
                      decoration: BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.circular(10.r),

                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: Image.network(i.image??'  ').image,
                        ),
                      ),
                    );
                  },
                );
              }).toList(),
            ),
            SizedBox(height: 15.h),

            AnimatedSmoothIndicator(
              activeIndex: activeIndex,
              count: images.length,
              effect: ExpandingDotsEffect(
                activeDotColor: AppColor.primary,
                spacing: 7,
                dotHeight: 8,
                dotWidth: 10,
              ),
            ),
          ],
        );
        
        }
        else{return Text("eroor");};
      },
    );
  }
}
