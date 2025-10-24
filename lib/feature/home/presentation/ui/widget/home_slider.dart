

import 'package:bookya_app/core/theme/app_color.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';


List<String> images=[
  "assets/images/back grand.png",
  "assets/images/logo.png",
  "assets/images/back grand.png",
  "assets/images/logo.png",
];



class HomeSlider extends StatefulWidget {
  const HomeSlider({super.key});

  @override
  State<HomeSlider> createState() => _HomeSliderState();
}

class _HomeSliderState extends State<HomeSlider> {

  int activeIndex=0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          
          options: CarouselOptions(height: 170.0.h,
          autoPlay: true,
          viewportFraction: 1,
          autoPlayInterval: Duration(seconds: 3 ),
          onPageChanged: (index, reason) {
            setState(() {
              activeIndex=index;
            });
          },
          ),
          
          items: images.map((i) {
        
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
                  image:Image.asset(i).image )
              ),
              
              
            );
          },
        );
          }).toList(),
        ),
        SizedBox(height: 15.h,),

              AnimatedSmoothIndicator(    
              activeIndex: activeIndex,    
              count: images.length,    
              effect:ExpandingDotsEffect(
                        activeDotColor: AppColor.primary,
                        spacing: 7,
                        dotHeight: 8,
                        dotWidth: 10

   ), 
)

      ],

    );
  }
}