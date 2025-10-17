import 'package:bookya_app/core/theme/app_color.dart';
import 'package:bookya_app/core/widgets/custom_text_form_feild.dart';
import 'package:bookya_app/core/widgets/master_botton.dart';
import 'package:bookya_app/core/widgets/text_rich.dart';
import 'package:bookya_app/feature/auth/data/models/register_request_model.dart';
import 'package:bookya_app/feature/auth/data/cubit/auth_cubit.dart';
import 'package:bookya_app/feature/bottom_nav_bar/presentation/ui/widget/bottom_nav_bar_screen.dart';
import 'package:bookya_app/feature/home/presentation/ui/home_screen.dart';
import 'package:bookya_app/feature/option_login/presentation/ui/login/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RegisterForm extends StatefulWidget {
  const RegisterForm({super.key});

  @override
  State<RegisterForm> createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  var formKey = GlobalKey<FormState>();
  TextEditingController nameControlar = TextEditingController();
  TextEditingController emailControlar = TextEditingController();
  TextEditingController passwordControlar = TextEditingController();
  TextEditingController passwordConfirmationControlar = TextEditingController();
  TextEditingController cityControlar = TextEditingController();

bool emailvalid (String email){
 bool emailValid = 
    RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
      .hasMatch(email);
      return emailValid;
}

  @override
  void dispose() {
    nameControlar.dispose();
    emailControlar.dispose();
    passwordControlar.dispose();
    passwordConfirmationControlar.dispose();
    cityControlar.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 28, horizontal: 22),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Hello! Register to get \nstarted",
                style: TextStyle(fontSize: 30, color: AppColor.dark),
              ),
              SizedBox(height: 32),
              CustomTextFormFeild(
                controller: nameControlar,
                hintText: "Username",
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Name is required";
                  }
                  return null;
                },
              ),
              SizedBox(height: 11),
              CustomTextFormFeild(
                controller: emailControlar,
                hintText: "Email",
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Email is required";
                  }else if(!emailvalid(value)){
                    return "Enter a valid email";
                  }
                  return null;
                },
              ),
              SizedBox(height: 11),
              CustomTextFormFeild(
                controller: passwordControlar,
                hintText: "Password",
                isPassword: true,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Password is required";
                  }else if(value.length<8){
                    return "please write more than 8 numbars";
                  }
                  return null;
                },
              ),
              SizedBox(height: 11),
              CustomTextFormFeild(
                validator: (value) {
                  if (value != passwordControlar.text) {
                    return "confirm password is not match";
                  }
                  return null;
                },
                controller: passwordConfirmationControlar,
                hintText: "Confirm password",
                isPassword: true,
              ),
              SizedBox(height: 11),
              CustomTextFormFeild(controller: cityControlar, hintText: "city"),
              SizedBox(height: 35),
              BlocListener<AuthCubit, AuthState>(
                listener: (context, state) {
                 if(state is RegisterLoadingState){
                  showDialog(barrierDismissible: false,context: context, builder: (context)=>Center(child: CircularProgressIndicator()));
                 }else if(state is RegisterSuccessState){
                  Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>BottomNavBarScreen()), (e)=>false);
                 }else if(state is RegisterErrorState){
                 
                   Navigator.pop(context);
                    showDialog(
                      context: context,
                      builder: (context) =>
                          AlertDialog(content: Text("errorr")),
                    );
                 }
                },
                child: MasterBotton(
                  title: "Register",

                  onTap: () {
                    if (formKey.currentState?.validate() ?? false) {
                      context.read<AuthCubit>().register(
                        RegisterRequestModel(
                          name: nameControlar.text,
                          email: emailControlar.text,
                          password: passwordControlar.text,
                          passwordConfirmation:
                              passwordConfirmationControlar.text,
                          city: cityControlar.text,
                        ),
                      );
                    }
                  },
                ),
              ),
              SizedBox(height: 215.h),
              TextRich(
                text1: "Already have an account?",
                text2: "Login Now",
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginScreen()),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
