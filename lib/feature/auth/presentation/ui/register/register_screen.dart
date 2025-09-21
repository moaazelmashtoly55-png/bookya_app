import 'package:bookya_app/core/theme/app_color.dart';
import 'package:bookya_app/core/widgets/custom_app_bar.dart';
import 'package:bookya_app/core/widgets/custom_text_form_feild.dart';
import 'package:bookya_app/core/widgets/master_botton.dart';
import 'package:bookya_app/core/widgets/text_rich.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),

body: Padding(
  padding: const EdgeInsets.symmetric(vertical: 28,horizontal: 22),
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text("Hello! Register to get \nstarted",style: TextStyle(
        fontSize: 30,
        color: AppColor.dark,
        
      ),),
      SizedBox(height: 32,),
    CustomTextFormFeild(hintText: "Username"),
    SizedBox(height: 11,),
    CustomTextFormFeild(hintText: "Email"),
    SizedBox(height: 11,),
    CustomTextFormFeild(hintText: "Password",isPassword: true,),
    SizedBox(height: 11,),
    CustomTextFormFeild(hintText: "Confirm password",isPassword: true,),
    SizedBox(height: 35,),
    MasterBotton(title: "Register"),
    SizedBox(height: 260,),
    TextRich(text1: "Already have an account?", text2: "Login Now")


    ],
  ),
),

    );
  }
}