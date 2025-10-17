import 'package:bookya_app/core/helper/local_servises.dart';
import 'package:bookya_app/core/widgets/custom_app_bar.dart';
import 'package:bookya_app/core/widgets/master_botton.dart';
import 'package:bookya_app/feature/welcome/presentation/ui/welcome_screen.dart';
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
          ElevatedButton(onPressed: (){
            LocalServises.prefs?.remove("userToken");
            Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>WelcomeScreen()), (e)=>false);
          }, child: Text("logout"))
        ],
      ),
    );
  }
}