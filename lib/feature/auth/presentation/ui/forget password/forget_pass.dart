import 'package:bookya_app/core/theme/app_color.dart';
import 'package:bookya_app/core/widgets/custom_app_bar.dart';
import 'package:bookya_app/core/widgets/custom_text_form_feild.dart';
import 'package:bookya_app/core/widgets/master_botton.dart';
import 'package:bookya_app/core/widgets/text_rich.dart';
import 'package:flutter/material.dart';

class ForgetPass extends StatelessWidget {
  const ForgetPass({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
appBar: CustomAppBar(),

body: Padding(
  padding: const EdgeInsets.symmetric(horizontal: 22),
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      SizedBox(height: 30,),
      Text("Forgot Password?",style: TextStyle(
        fontSize: 30,
        color: AppColor.dark,
      ),),
      SizedBox(height: 10,),
      Text("Don't worry! It occurs. Please enter the email\n address linked with your account."
      ,style: TextStyle(
        fontSize: 16,
        color: AppColor.gray,
      ),),
      SizedBox(height: 30,),
      CustomTextFormFeild(hintText:"Enter your email"),
      SizedBox(height: 38,),
      MasterBotton(title:"Send Code"),
      SizedBox(height: 445,),
      TextRich(text1: "Remember Password?", text2: " Login")

    ],
  ),
),


    );
  }
}