import 'package:bookya_app/core/helper/local_servises.dart';
import 'package:bookya_app/feature/home/presentation/ui/home_screen.dart';
import 'package:bookya_app/feature/welcome/presentation/ui/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Bookya extends StatelessWidget {
  const Bookya({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp(
      
      debugShowCheckedModeBanner: false,
      home: initalScreen(),
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        fontFamily: "DM Serif Display"
      ),
      
      
      ),
    );
  }

initalScreen(){


  if(LocalServises.prefs?.getString("userToken")==null){
    return WelcomeScreen();
  }else{
    return HomeScreen();
  }

}




  
}