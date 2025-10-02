import 'package:bookya_app/core/theme/app_color.dart';
import 'package:bookya_app/core/widgets/con_icon.dart';
import 'package:bookya_app/core/widgets/custom_app_bar.dart';
import 'package:bookya_app/core/widgets/custom_text_form_feild.dart';
import 'package:bookya_app/core/widgets/master_botton.dart';
import 'package:bookya_app/core/widgets/text_rich.dart';
import 'package:bookya_app/feature/auth/presentation/cubit/cubit/auth_cubit.dart';
import 'package:bookya_app/feature/auth/presentation/ui/forget%20password/forget_pass_screen.dart';
import 'package:bookya_app/feature/home/presentation/ui/home_screen.dart';
import 'package:bookya_app/feature/welcome/presentation/ui/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => WelcomeScreen()),
          );
        },
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 22),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 29),
              Text(
                "Welcome back! Glad\nto see you, Again!",
                style: TextStyle(fontSize: 30),
              ),

              SizedBox(height: 32),
              CustomTextFormFeild(
                controller: emailController,
                hintText: "Enter your email",
              ),
              SizedBox(height: 15),
              CustomTextFormFeild(
                controller: passwordController,
                hintText: "Enter your Password",
                isPassword: true,
              ),
              SizedBox(height: 13),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ForgetPassScreen()),
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
              BlocListener<AuthCubit, AuthState>(
                listener: (context, state) {
                  if (state is LoginLoadingState) {
                    showDialog(
                      context: context,
                      builder: (context) =>
                          Center(child: CircularProgressIndicator()),
                    );
                  } else if (state is LoginErrorState) {
                    Navigator.pop(context);
                    showDialog(
                      context: context,
                      builder: (context) =>
                          AlertDialog(content: Text("errorr")),
                    );
                  } else if (state is LoginSuccessState) {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(builder: (context) => HomeScreen()),
                      (e) => false,
                    );
                    print("success");
                  }
                },
                child: MasterBotton(
                  title: "Login",
                  onTap: () {
                    context.read<AuthCubit>().login(
                      email: emailController.text,
                      password: passwordController.text,
                    );
                  },
                ),
              ),
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
              SizedBox(height: 187),
              TextRich(text1: " Don’t have an account?", text2: "Register Now"),
            ],
          ),
        ),
      ),
    );
  }
}
