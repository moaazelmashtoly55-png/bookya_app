import 'package:bookya_app/feature/welcome/presentation/ui/welcome_screen.dart';
import 'package:flutter/material.dart';

class Bookya extends StatelessWidget {
  const Bookya({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

debugShowCheckedModeBanner: false,
home: WelcomeScreen(),
theme: ThemeData(
  scaffoldBackgroundColor: Colors.white,
  fontFamily: "DM Serif Display"
),


    );
  }
}