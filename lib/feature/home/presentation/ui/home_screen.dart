import 'package:bookya_app/core/widgets/custom_app_bar.dart';
import 'package:bookya_app/core/widgets/master_botton.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: CustomAppBar(),
      body: Column(
        children: [
          MasterBotton(title: "moza"),
          MasterBotton(title: "moza"),
          MasterBotton(title: "moza"),
          MasterBotton(title: "moza"),
        ],
      ),
    );
  }
}