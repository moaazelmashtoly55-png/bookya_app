import 'package:bookya_app/core/theme/app_color.dart';
import 'package:bookya_app/core/widgets/master_botton.dart';
import 'package:bookya_app/feature/auth/presentation/ui/login/login_screen.dart';
import 'package:bookya_app/feature/auth/presentation/ui/register/register_screen.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,

        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: Image.asset("assets/images/back grand.png").image,
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 22),
            child: Column(
              children: [
                SizedBox(height: 135),
                Image.asset("assets/images/logo x1.png"),
                SizedBox(height: 28),
                Text(
                  "Order Your Book Now!",
                  style: TextStyle(
                    fontSize: 20,
                    color: AppColor.dark,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Spacer(),
                MasterBotton(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoginScreen()),
                    );
                  },
                  title: "Login",
                ),
                SizedBox(height: 15),
                MasterBotton(
                  onTap: () {
                     Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => RegisterScreen()),
                    );
                  },
                  title: "Register",
                  backgroundcolor: Colors.white,
                  textcolor: Colors.black,
                ),
                SizedBox(height: 93),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
