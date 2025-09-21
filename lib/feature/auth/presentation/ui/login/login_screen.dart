import 'package:bookya_app/core/theme/app_color.dart';
import 'package:bookya_app/core/widgets/con_icon.dart';
import 'package:bookya_app/core/widgets/custom_app_bar.dart';
import 'package:bookya_app/core/widgets/custom_text_form_feild.dart';
import 'package:bookya_app/core/widgets/master_botton.dart';
import 'package:bookya_app/core/widgets/text_rich.dart';
import 'package:bookya_app/feature/auth/presentation/ui/forget%20password/forget_pass.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 22),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 29),
            Text(
              "Welcome back! Glad\nto see you, Again!",
              style: TextStyle(fontSize: 30),
            ),

            SizedBox(height: 32),
            CustomTextFormFeild(hintText: "Enter your email"),
            SizedBox(height: 15),
            CustomTextFormFeild(
              hintText: "Enter your Password",
              isPassword: true,
            ),
            SizedBox(height: 13),
            InkWell(
              onTap: () {
                 Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => ForgetPass()),
            );
              },
              child: Align(
                alignment: Alignment.centerRight,
                child: Text(
                  "Forgot Password?",
                  style: TextStyle(fontSize: 14, color: AppColor.darkgray),
                ),
              ),
            ),
            SizedBox(height: 30),
            MasterBotton(title: "Login"),
            SizedBox(height: 34),
            Row(
              children: [
                Expanded(child: Divider(endIndent: 13)),
                Text(
                  "Or Login with",
                  style: TextStyle(fontSize: 14, color: AppColor.darkgray),
                ),
                Expanded(child: Divider(indent: 13)),
              ],
            ),
            SizedBox(height: 35),

            Row(
              spacing: 8,
              children: [
                ConIcon(svg: "assets/icon/facebook_ic.svg"),
                ConIcon(svg: "assets/icon/google_ic.svg"),
                ConIcon(svg: "assets/icon/cib_apple.svg"),
              ],
            ),
            SizedBox(height: 210),
           TextRich(text1:" Don’t have an account?", text2: "Register Now")
          ],
        ),
      ),
    );
  }
}
