import 'package:bookya_app/core/theme/app_color.dart';
import 'package:bookya_app/core/widgets/custom_text_form_feild.dart';
import 'package:bookya_app/core/widgets/master_botton.dart';
import 'package:bookya_app/core/widgets/text_rich.dart';
import 'package:bookya_app/feature/auth/data/models/register_request_model.dart';
import 'package:bookya_app/feature/option_login/presentation/cubit/cubit/auth_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
                },
              ),
              SizedBox(height: 11),
              CustomTextFormFeild(
                controller: emailControlar,
                hintText: "Email",
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Email is required";
                  }
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
                  }
                },
              ),
              SizedBox(height: 11),
              CustomTextFormFeild(
                validator: (value) {
                  if (value != passwordControlar.text) {
                    return "confirm password is not match";
                  }
                },
                controller: passwordConfirmationControlar,
                hintText: "Confirm password",
                isPassword: true,
              ),
              SizedBox(height: 11),
              CustomTextFormFeild(controller: cityControlar, hintText: "city"),
              SizedBox(height: 35),
              MasterBotton(
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
              SizedBox(height: 215),
              TextRich(text1: "Already have an account?", text2: "Login Now"),
            ],
          ),
        ),
      ),
    );
  }
}
